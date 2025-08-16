using System;
using System.IO;
using System.Text;

public class Program
{
	sealed class FastScanner
	{
		private readonly Stream _s;
		private readonly byte[] _b = new byte[1 << 16];
		private int _l, _p;
		public FastScanner(Stream s) { _s = s; }
		private int Read() { if (_p >= _l) { _l = _s.Read(_b, 0, _b.Length); _p = 0; if (_l <= 0) return -1; } return _b[_p++]; }
		public int NextInt() { int c; do { c = Read(); } while (c <= 32); int sign = 1; if (c == '-') { sign = -1; c = Read(); } int x = 0; while (c > 32) { x = x * 10 + c - 48; c = Read(); } return x * sign; }
	}

	// Graph (original): array adjacency
	static int n, q;
	static int[] headG, toG, nextG; static int edgePtrG;
	static void AddG(int u, int v) { toG[edgePtrG] = v; nextG[edgePtrG] = headG[u]; headG[u] = edgePtrG++; }

	// Triangle tree (3..n): array adjacency
	static int[] headT, toT, nextT; static int edgePtrT;
	static void AddT(int u, int v) { toT[edgePtrT] = v; nextT[edgePtrT] = headT[u]; headT[u] = edgePtrT++; }

	static int[][] tri; // tri[i][0..2]

	// Build helpers
	static long Key(int a, int b) { if (a > b) { int t = a; a = b; b = t; } return ((long)a << 32) | (uint)b; }

	// Decomposition state
	static bool[] removed;
	static int[] compMarkT; static int compStampT;
	static int[] parentT; static int[] sizeT; static int[] orderT;
	static int[] stackT; // custom stack for tree traversals
	
	static int[] compMarkV; static int compStampV;
	
	static int[] dist0, dist1, dist2, vis0, vis1, vis2; static int stamp0, stamp1, stamp2;
	static int[] qbuf;
	
	// assign vertices to children (per centroid)
	static int[] assignStamp, assignId; static int assignStampCur;
	static int[] visitT; static int visitTStamp;
	
	// queries
	static int[] sQ, tQ, ansQ;
	static int[] globalQueryIndexBuf; // scratch buffer for bucketing queries

	public static void Main()
	{
		var fs = new FastScanner(Console.OpenStandardInput());
		n = fs.NextInt();
		headG = new int[n + 5]; Array.Fill(headG, -1);
		toG = new int[4 * n + 10]; // total directed edges = 2*(2n-3) <= 4n-6
		nextG = new int[toG.Length]; edgePtrG = 0;

		tri = new int[n + 1][];
		headT = new int[n + 5]; Array.Fill(headT, -1);
		toT = new int[(n - 3) * 2 + 10]; nextT = new int[toT.Length]; edgePtrT = 0;

		// initial triangle 3: 1-2-3
		tri[3] = new int[3] { 1, 2, 3 };
		AddG(1, 2); AddG(2, 1);
		AddG(2, 3); AddG(3, 2);
		AddG(1, 3); AddG(3, 1);

		var map = new System.Collections.Generic.Dictionary<long, int>(2 * n);
		map[Key(1, 2)] = 3; map[Key(2, 3)] = 3; map[Key(1, 3)] = 3;

		int[] u = new int[n + 1], v = new int[n + 1];
		for (int i = 4; i <= n; i++)
		{
			u[i] = fs.NextInt(); v[i] = fs.NextInt();
			AddG(i, u[i]); AddG(u[i], i);
			AddG(i, v[i]); AddG(v[i], i);
			tri[i] = new int[3] { i, u[i], v[i] };
			int p = map[Key(u[i], v[i])];
			AddT(p, i); AddT(i, p);
			map[Key(u[i], v[i])] = i;
			map[Key(u[i], i)] = i; map[Key(v[i], i)] = i;
		}

		q = fs.NextInt();
		sQ = new int[q]; tQ = new int[q]; ansQ = new int[q];
		for (int i = 0; i < q; i++) { int s = fs.NextInt(), t = fs.NextInt(); sQ[i] = s; tQ[i] = t; ansQ[i] = (s == t) ? 0 : int.MaxValue / 4; }

		removed = new bool[n + 1];
		compMarkT = new int[n + 1]; parentT = new int[n + 1]; sizeT = new int[n + 1]; orderT = new int[n + 1]; stackT = new int[n + 5];
		compMarkV = new int[n + 1];
		dist0 = new int[n + 1]; dist1 = new int[n + 1]; dist2 = new int[n + 1];
		vis0 = new int[n + 1]; vis1 = new int[n + 1]; vis2 = new int[n + 1];
		qbuf = new int[n + 5];
		assignStamp = new int[n + 1]; assignId = new int[n + 1];
		visitT = new int[n + 1];
		globalQueryIndexBuf = new int[Math.Max(1, q)];

		// seed queries array 0..q-1
		for (int i = 0; i < q; i++) globalQueryIndexBuf[i] = i;
		DecomposeArray(3, globalQueryIndexBuf, 0, q);

		var sb = new StringBuilder();
		for (int i = 0; i < q; i++) sb.AppendLine(ansQ[i].ToString());
		Console.Write(sb.ToString());
	}

	static void DecomposeArray(int startT, int[] queries, int qStart, int qLen)
	{
		if (qLen == 0) return;
		// collect component triangles via stack ignoring removed
		compStampT++;
		int top = 0; // order length
		int sp = 0; stackT[sp++] = startT; compMarkT[startT] = compStampT; parentT[startT] = -1;
		while (sp > 0)
		{
			int u = stackT[--sp];
			orderT[top++] = u;
			for (int e = headT[u]; e != -1; e = nextT[e])
			{
				int w = toT[e]; if (removed[w] || compMarkT[w] == compStampT) continue;
				compMarkT[w] = compStampT; parentT[w] = u; stackT[sp++] = w;
			}
		}
		if (top == 0) return;
		for (int i = top - 1; i >= 0; i--)
		{
			int u = orderT[i]; int s = 1;
			for (int e = headT[u]; e != -1; e = nextT[e])
			{
				int w = toT[e]; if (removed[w] || compMarkT[w] != compStampT) continue; if (parentT[w] == u) s += sizeT[w];
			}
			sizeT[u] = s;
		}
		int total = top, centroid = -1, best = int.MaxValue;
		for (int i = 0; i < top; i++)
		{
			int u = orderT[i]; int mx = total - sizeT[u];
			for (int e = headT[u]; e != -1; e = nextT[e]) { int w = toT[e]; if (removed[w] || compMarkT[w] != compStampT) continue; if (parentT[w] == u && sizeT[w] > mx) mx = sizeT[w]; }
			if (mx < best) { best = mx; centroid = u; }
		}

		// mark vertices in this component
		compStampV++;
		for (int i = 0; i < top; i++) { var v = tri[orderT[i]]; compMarkV[v[0]] = compStampV; compMarkV[v[1]] = compStampV; compMarkV[v[2]] = compStampV; }

		var port = tri[centroid];
		RunBFS(port[0], ref stamp0, vis0, dist0);
		RunBFS(port[1], ref stamp1, vis1, dist1);
		RunBFS(port[2], ref stamp2, vis2, dist2);

		// process queries crossing via centroid (constant-time per query)
		for (int ii = 0; ii < qLen; ii++)
		{
			int id = queries[qStart + ii]; if (ansQ[id] == 0) continue; int s = sQ[id], t = tQ[id];
			if (compMarkV[s] != compStampV || compMarkV[t] != compStampV) continue;
			int bestAns = ansQ[id];
			int a = (vis0[s] == stamp0 && vis0[t] == stamp0) ? dist0[s] + dist0[t] : int.MaxValue;
			int b = (vis1[s] == stamp1 && vis1[t] == stamp1) ? dist1[s] + dist1[t] : int.MaxValue;
			int c = (vis2[s] == stamp2 && vis2[t] == stamp2) ? dist2[s] + dist2[t] : int.MaxValue;
			if (a < bestAns) bestAns = a; if (b < bestAns) bestAns = b; if (c < bestAns) bestAns = c;
			int a0 = (vis0[s] == stamp0) ? dist0[s] : int.MaxValue;
			int a1 = (vis1[s] == stamp1) ? dist1[s] : int.MaxValue;
			int a2 = (vis2[s] == stamp2) ? dist2[s] : int.MaxValue;
			int b0 = (vis0[t] == stamp0) ? dist0[t] : int.MaxValue;
			int b1 = (vis1[t] == stamp1) ? dist1[t] : int.MaxValue;
			int b2 = (vis2[t] == stamp2) ? dist2[t] : int.MaxValue;
			if (a0 < int.MaxValue && b1 < int.MaxValue && a0 + b1 + 1 < bestAns) bestAns = a0 + b1 + 1;
			if (a0 < int.MaxValue && b2 < int.MaxValue && a0 + b2 + 1 < bestAns) bestAns = a0 + b2 + 1;
			if (a1 < int.MaxValue && b0 < int.MaxValue && a1 + b0 + 1 < bestAns) bestAns = a1 + b0 + 1;
			if (a1 < int.MaxValue && b2 < int.MaxValue && a1 + b2 + 1 < bestAns) bestAns = a1 + b2 + 1;
			if (a2 < int.MaxValue && b0 < int.MaxValue && a2 + b0 + 1 < bestAns) bestAns = a2 + b0 + 1;
			if (a2 < int.MaxValue && b1 < int.MaxValue && a2 + b1 + 1 < bestAns) bestAns = a2 + b1 + 1;
			if (bestAns < ansQ[id]) ansQ[id] = bestAns;
		}

		// gather children and assign vertices -> child id
		removed[centroid] = true;
		int deg = 0; for (int e = headT[centroid]; e != -1; e = nextT[e]) { int w = toT[e]; if (!removed[w] && compMarkT[w] == compStampT) deg++; }
		int[] childRoots = new int[deg]; int pos = 0; for (int e = headT[centroid]; e != -1; e = nextT[e]) { int w = toT[e]; if (!removed[w] && compMarkT[w] == compStampT) childRoots[pos++] = w; }
		assignStampCur++;
		int p0 = port[0], p1 = port[1], p2 = port[2];
		for (int i = 0; i < childRoots.Length; i++)
		{
			int root = childRoots[i]; int idc = i + 1;
			visitTStamp++;
			int stp = 0; stackT[stp++] = root; visitT[centroid] = visitTStamp;
			while (stp > 0)
			{
				int u = stackT[--stp]; if (visitT[u] == visitTStamp) continue; visitT[u] = visitTStamp;
				var tv = tri[u];
				int a = tv[0], b2 = tv[1], c2 = tv[2];
				if (a != p0 && a != p1 && a != p2) { assignStamp[a] = assignStampCur; assignId[a] = idc; }
				if (b2 != p0 && b2 != p1 && b2 != p2) { assignStamp[b2] = assignStampCur; assignId[b2] = idc; }
				if (c2 != p0 && c2 != p1 && c2 != p2) { assignStamp[c2] = assignStampCur; assignId[c2] = idc; }
				for (int e = headT[u]; e != -1; e = nextT[e]) { int w = toT[e]; if (removed[w]) continue; if (visitT[w] == visitTStamp) continue; stackT[stp++] = w; }
			}
		}

		// bucket queries for children in a single pass using contiguous buffer
		int m = childRoots.Length;
		if (m > 0)
		{
			int[] cnt = new int[m];
			for (int ii = 0; ii < qLen; ii++)
			{
				int id = queries[qStart + ii]; if (ansQ[id] == 0) continue; int s = sQ[id], t = tQ[id];
				if (assignStamp[s] == assignStampCur && assignStamp[t] == assignStampCur)
				{
					int isid = assignId[s]; if (isid == assignId[t]) cnt[isid - 1]++;
				}
			}
			int[] start = new int[m]; int[] posArr = new int[m];
			int totalCnt = 0; for (int i = 0; i < m; i++) { start[i] = totalCnt; posArr[i] = totalCnt; totalCnt += cnt[i]; }
			if (globalQueryIndexBuf.Length < totalCnt) globalQueryIndexBuf = new int[Math.Max(globalQueryIndexBuf.Length * 2, totalCnt)];
			for (int ii = 0; ii < qLen; ii++)
			{
				int id = queries[qStart + ii]; if (ansQ[id] == 0) continue; int s = sQ[id], t = tQ[id];
				if (assignStamp[s] == assignStampCur && assignStamp[t] == assignStampCur)
				{
					int isid = assignId[s], itid = assignId[t]; if (isid == itid)
					{
						int p = posArr[isid - 1]++;
						globalQueryIndexBuf[p] = id;
					}
				}
			}
			for (int i = 0; i < m; i++)
			{
				int lenChild = cnt[i]; if (lenChild == 0) continue;
				int startIdx = start[i];
				DecomposeArray(childRoots[i], globalQueryIndexBuf, startIdx, lenChild);
			}
		}
	}

	static void RunBFS(int src, ref int stamp, int[] vis, int[] dist)
	{
		stamp++;
		int h = 0, t = 0; vis[src] = stamp; dist[src] = 0; qbuf[t++] = src;
		while (h < t)
		{
			int u = qbuf[h++];
			for (int e = headG[u]; e != -1; e = nextG[e])
			{
				int w = toG[e]; if (compMarkV[w] != compStampV) continue; if (vis[w] == stamp) continue; vis[w] = stamp; dist[w] = dist[u] + 1; qbuf[t++] = w;
			}
		}
	}
}