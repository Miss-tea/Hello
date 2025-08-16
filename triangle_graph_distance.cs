using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

public class Program
{
	// Fast scanner for input
	sealed class FastScanner
	{
		private readonly Stream _stream;
		private readonly byte[] _buf = new byte[1 << 16];
		private int _len, _ptr;
		public FastScanner(Stream stream) { _stream = stream; }
		private int Read()
		{
			if (_ptr >= _len)
			{
				_len = _stream.Read(_buf, 0, _buf.Length);
				_ptr = 0;
				if (_len <= 0) return -1;
			}
			return _buf[_ptr++];
		}
		public int NextInt()
		{
			int c;
			do { c = Read(); } while (c <= 32);
			int sign = 1;
			if (c == '-') { sign = -1; c = Read(); }
			int x = 0;
			while (c > 32) { x = x * 10 + (c - '0'); c = Read(); }
			return x * sign;
		}
	}

	// Graph and triangle tree
	static int n, q;
	static List<int>[] graph; // original graph G (n nodes)
	static List<int>[] triAdj; // triangle tree adjacency (nodes indexed by triangle id 3..n)
	static int[][] triVerts; // for triangle id t, the three vertices

	// Queries
	static int[] qs, qt;
	static int[] answer;

	// Helpers for building triangle tree
	static long EdgeKey(int a, int b)
	{
		if (a > b) { int tmp = a; a = b; b = tmp; }
		return ((long)a << 32) | (uint)b;
	}

	// Decomposition helpers
	static bool[] triRemoved; // whether a triangle node is removed in centroid decomposition
	static int[] triParentTmp; // temp parent when traversing a component
	static int[] triSizeTmp; // subtree sizes for centroid computation
	static int[] triCompMark; // mark triangles that are in current component (stamp)
	static int triCompStamp = 1;

	static int[] vertexMark; // mark vertices that are in current component (stamp)
	static int vertexStamp = 1;

	// For assigning vertices to children at a centroid
	static int[] childAssignStamp; // stamp showing assignment belongs to current centroid
	static int[] childIdOfVertex; // id (1..k) of which child component a vertex belongs to at current centroid
	static int currentAssignStamp = 1;

	static int[] triVisitMark; // temporary visit mark for collecting child subtree triangles (stamp)
	static int triVisitStamp = 1;

	// Distance buffers + visited stamps reused per level
	static int[] distA, distB, distC; // distances from the centroid triangle's three portals
	static int[] markA, markB, markC; // visited stamps for the three BFS runs
	static int stampA, stampB, stampC;
	static int[] bfsQueue; // queue buffer reused

	public static void Main()
	{
		var fs = new FastScanner(Console.OpenStandardInput());
		n = fs.NextInt();
		graph = new List<int>[n + 1];
		for (int i = 1; i <= n; i++) graph[i] = new List<int>();

		// triangle tree structures (triangles are 3..n)
		triAdj = new List<int>[n + 1];
		for (int i = 0; i <= n; i++) triAdj[i] = new List<int>();
		triVerts = new int[n + 1][];

		// initial triangle 3: vertices 1,2,3
		triVerts[3] = new int[] { 1, 2, 3 };
		AddEdge(1, 2);
		AddEdge(2, 3);
		AddEdge(1, 3);

		var lastTri = new Dictionary<long, int>(capacity: 2 * (2 * n + 10));
		lastTri[EdgeKey(1, 2)] = 3;
		lastTri[EdgeKey(2, 3)] = 3;
		lastTri[EdgeKey(1, 3)] = 3;

		int[] u = new int[n + 1];
		int[] v = new int[n + 1];
		for (int i = 4; i <= n; i++)
		{
			u[i] = fs.NextInt();
			v[i] = fs.NextInt();
			AddEdge(i, u[i]);
			AddEdge(i, v[i]);

			triVerts[i] = new int[] { i, u[i], v[i] };
			int parentTri = lastTri[EdgeKey(u[i], v[i])];
			triAdj[parentTri].Add(i);
			triAdj[i].Add(parentTri);
			lastTri[EdgeKey(u[i], v[i])] = i;
			lastTri[EdgeKey(u[i], i)] = i;
			lastTri[EdgeKey(v[i], i)] = i;
		}

		q = fs.NextInt();
		qs = new int[q];
		qt = new int[q];
		answer = new int[q];
		for (int i = 0; i < q; i++)
		{
			qs[i] = fs.NextInt();
			qt[i] = fs.NextInt();
			answer[i] = (qs[i] == qt[i]) ? 0 : int.MaxValue / 4;
		}

		// Prepare arrays for decomposition
		triRemoved = new bool[n + 1];
		triParentTmp = new int[n + 1];
		triSizeTmp = new int[n + 1];
		triCompMark = new int[n + 1];
		vertexMark = new int[n + 1];
		childAssignStamp = new int[n + 1];
		childIdOfVertex = new int[n + 1];
		triVisitMark = new int[n + 1];
		distA = new int[n + 1];
		distB = new int[n + 1];
		distC = new int[n + 1];
		markA = new int[n + 1];
		markB = new int[n + 1];
		markC = new int[n + 1];
		bfsQueue = new int[n + 5];

		// All query indices
		var allQueries = new List<int>(q);
		for (int i = 0; i < q; i++) allQueries.Add(i);

		// Start decomposition from triangle 3 (always exists and tree is connected)
		Decompose(3, allQueries);

		var sb = new StringBuilder(q * 3);
		for (int i = 0; i < q; i++) sb.AppendLine(answer[i].ToString());
		Console.Write(sb.ToString());
	}

	static void AddEdge(int a, int b)
	{
		graph[a].Add(b);
		graph[b].Add(a);
	}

	static void Decompose(int startTri, List<int> queryIndices)
	{
		if (queryIndices.Count == 0) return;

		// Gather component triangles starting from startTri (ignoring removed)
		var triList = new List<int>();
		var order = new List<int>();
		// BFS to mark component and get list
		var qtri = new Queue<int>();
		triCompStamp++;
		triCompMark[startTri] = triCompStamp;
		qtri.Enqueue(startTri);
		while (qtri.Count > 0)
		{
			int u = qtri.Dequeue();
			triList.Add(u);
			foreach (var w in triAdj[u])
			{
				if (triRemoved[w] || triCompMark[w] == triCompStamp) continue;
				triCompMark[w] = triCompStamp;
				qtri.Enqueue(w);
			}
		}

		if (triList.Count == 0) return;

		// Build parent and order for centroid on this component
		int root = startTri;
		var stack = new Stack<int>();
		triParentTmp[root] = -1;
		stack.Push(root);
		order.Clear();
		while (stack.Count > 0)
		{
			int u = stack.Pop();
			order.Add(u);
			foreach (var w in triAdj[u])
			{
				if (triRemoved[w] || triCompMark[w] != triCompStamp) continue;
				if (w == triParentTmp[u]) continue;
				triParentTmp[w] = u;
				stack.Push(w);
			}
		}

		int total = order.Count;
		for (int i = total - 1; i >= 0; i--)
		{
			int u = order[i];
			int sz = 1;
			foreach (var w in triAdj[u])
			{
				if (triRemoved[w] || triCompMark[w] != triCompStamp) continue;
				if (triParentTmp[w] == u) sz += triSizeTmp[w];
			}
			triSizeTmp[u] = sz;
		}

		int centroid = -1;
		int bestMaxPart = int.MaxValue;
		for (int i = 0; i < total; i++)
		{
			int u = order[i];
			int maxPart = total - triSizeTmp[u];
			foreach (var w in triAdj[u])
			{
				if (triRemoved[w] || triCompMark[w] != triCompStamp) continue;
				if (triParentTmp[w] == u)
					if (triSizeTmp[w] > maxPart) maxPart = triSizeTmp[w];
			}
			if (maxPart < bestMaxPart) { bestMaxPart = maxPart; centroid = u; }
		}

		// Build vertex set membership for this component (include centroid triangle vertices)
		vertexStamp++;
		for (int i = 0; i < triList.Count; i++)
		{
			int t = triList[i];
			var tv = triVerts[t];
			vertexMark[tv[0]] = vertexStamp;
			vertexMark[tv[1]] = vertexStamp;
			vertexMark[tv[2]] = vertexStamp;
		}

		// Compute distances from the centroid triangle's three portals to all reachable vertices in this component using stamps (no resets)
		var portals = triVerts[centroid];
		RunBFSWithStamp(portals[0], markA, ref stampA, distA);
		RunBFSWithStamp(portals[1], markB, ref stampB, distB);
		RunBFSWithStamp(portals[2], markC, ref stampC, distC);

		// Process queries in this component
		for (int i = 0; i < queryIndices.Count; i++)
		{
			int idx = queryIndices[i];
			if (answer[idx] == 0) continue;
			int s = qs[idx], t = qt[idx];
			if (vertexMark[s] != vertexStamp || vertexMark[t] != vertexStamp) continue;

			int best = answer[idx];
			int ds0 = (markA[s] == stampA) ? distA[s] : -1;
			int dt0 = (markA[t] == stampA) ? distA[t] : -1;
			if (ds0 >= 0 && dt0 >= 0) { int cand = ds0 + dt0; if (cand < best) best = cand; }
			int ds1 = (markB[s] == stampB) ? distB[s] : -1;
			int dt1 = (markB[t] == stampB) ? distB[t] : -1;
			if (ds1 >= 0 && dt1 >= 0) { int cand = ds1 + dt1; if (cand < best) best = cand; }
			int ds2 = (markC[s] == stampC) ? distC[s] : -1;
			int dt2 = (markC[t] == stampC) ? distC[t] : -1;
			if (ds2 >= 0 && dt2 >= 0) { int cand = ds2 + dt2; if (cand < best) best = cand; }

			if (ds0 >= 0 && dt1 >= 0) { int cand = ds0 + dt1 + 1; if (cand < best) best = cand; }
			if (ds0 >= 0 && dt2 >= 0) { int cand = ds0 + dt2 + 1; if (cand < best) best = cand; }
			if (ds1 >= 0 && dt0 >= 0) { int cand = ds1 + dt0 + 1; if (cand < best) best = cand; }
			if (ds1 >= 0 && dt2 >= 0) { int cand = ds1 + dt2 + 1; if (cand < best) best = cand; }
			if (ds2 >= 0 && dt0 >= 0) { int cand = ds2 + dt0 + 1; if (cand < best) best = cand; }
			if (ds2 >= 0 && dt1 >= 0) { int cand = ds2 + dt1 + 1; if (cand < best) best = cand; }

			if (best < answer[idx]) answer[idx] = best;
		}

		// Prepare to recurse into each child component (exclude centroid's vertices for propagation)
		triRemoved[centroid] = true;

		var childRoots = new List<int>();
		foreach (var nb in triAdj[centroid])
		{
			if (triRemoved[nb]) continue;
			if (triCompMark[nb] != triCompStamp) continue; // not in this component
			childRoots.Add(nb);
		}

		// Assign vertices to child ids in a single pass
		currentAssignStamp++;
		int p0 = portals[0], p1 = portals[1], p2 = portals[2];
		int childCount = childRoots.Count;
		for (int idxChild = 0; idxChild < childCount; idxChild++)
		{
			int childRoot = childRoots[idxChild];
			int childId = idxChild + 1; // 1..k
			// collect triangles in this child subtree (with centroid removed) to assign vertices
			triVisitStamp++;
			var st = new Stack<int>();
			st.Push(childRoot);
			triVisitMark[centroid] = triVisitStamp; // block crossing into centroid
			while (st.Count > 0)
			{
				int u2 = st.Pop();
				if (triVisitMark[u2] == triVisitStamp) continue;
				triVisitMark[u2] = triVisitStamp;
				var tv = triVerts[u2];
				int a = tv[0], b = tv[1], c = tv[2];
				if (a != p0 && a != p1 && a != p2) { childAssignStamp[a] = currentAssignStamp; childIdOfVertex[a] = childId; }
				if (b != p0 && b != p1 && b != p2) { childAssignStamp[b] = currentAssignStamp; childIdOfVertex[b] = childId; }
				if (c != p0 && c != p1 && c != p2) { childAssignStamp[c] = currentAssignStamp; childIdOfVertex[c] = childId; }
				foreach (var w in triAdj[u2])
				{
					if (triRemoved[w]) continue;
					if (triVisitMark[w] == triVisitStamp) continue;
					st.Push(w);
				}
			}
		}

		// Bucket queries to children in a single pass
		var buckets = new List<int>[childCount];
		for (int i = 0; i < childCount; i++) buckets[i] = new List<int>();
		for (int i = 0; i < queryIndices.Count; i++)
		{
			int idx = queryIndices[i];
			if (answer[idx] == 0) continue;
			int s = qs[idx], t = qt[idx];
			if (childAssignStamp[s] == currentAssignStamp && childAssignStamp[t] == currentAssignStamp)
			{
				int idS = childIdOfVertex[s];
				if (idS == childIdOfVertex[t])
				{
					buckets[idS - 1].Add(idx);
				}
			}
		}

		// Recurse
		for (int idxChild = 0; idxChild < childCount; idxChild++)
		{
			if (buckets[idxChild].Count == 0) continue;
			Decompose(childRoots[idxChild], buckets[idxChild]);
		}
	}

	static void RunBFSWithStamp(int src, int[] mark, ref int stamp, int[] dist)
	{
		stamp++;
		int head = 0, tail = 0;
		mark[src] = stamp;
		dist[src] = 0;
		bfsQueue[tail++] = src;
		while (head < tail)
		{
			int u = bfsQueue[head++];
			var adj = graph[u];
			for (int j = 0; j < adj.Count; j++)
			{
				int w = adj[j];
				if (vertexMark[w] != vertexStamp) continue; // not in this component
				if (mark[w] == stamp) continue;
				mark[w] = stamp;
				dist[w] = dist[u] + 1;
				bfsQueue[tail++] = w;
			}
		}
	}
}