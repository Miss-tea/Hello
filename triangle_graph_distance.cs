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

	static int n, q;
	// Triangle tree adjacency (3..n)
	static int[] headT, toT, nextT; static int edgePtrT;
	static void AddT(int u, int v) { toT[edgePtrT] = v; nextT[edgePtrT] = headT[u]; headT[u] = edgePtrT++; }

	static int[][] tri; // tri[i] = {a,b,c}
	static long Key(int a, int b) { if (a > b) { int t = a; a = b; b = t; } return ((long)a << 32) | (uint)b; }

	// Binary lifting on triangle tree
	const int LOG = 20;
	static int[] depth;
	static int[][] up; // parent pointers
	static int[][] upMat; // for each node: flattened 3x3 matrices for 2^k jumps: size LOG*9
	static int INF = 1 << 28;

	// Queries
	static int[] qs, qt;

	public static void Main()
	{
		var fs = new FastScanner(Console.OpenStandardInput());
		n = fs.NextInt();

		// Build triangle tree
		tri = new int[n + 1][];
		headT = new int[n + 5]; Array.Fill(headT, -1);
		toT = new int[(n - 3) * 2 + 5]; nextT = new int[toT.Length]; edgePtrT = 0;

		tri[3] = new int[3] { 1, 2, 3 };
		var map = new System.Collections.Generic.Dictionary<long, int>(2 * n);
		map[Key(1, 2)] = 3; map[Key(2, 3)] = 3; map[Key(1, 3)] = 3;

		int[] u = new int[n + 1];
		int[] v = new int[n + 1];
		for (int i = 4; i <= n; i++)
		{
			u[i] = fs.NextInt(); v[i] = fs.NextInt();
			tri[i] = new int[3] { i, u[i], v[i] };
			int p = map[Key(u[i], v[i])];
			AddT(p, i); AddT(i, p);
			map[Key(u[i], v[i])] = i;
			map[Key(u[i], i)] = i; map[Key(v[i], i)] = i;
		}

		q = fs.NextInt();
		qs = new int[q]; qt = new int[q];
		for (int i = 0; i < q; i++) { qs[i] = fs.NextInt(); qt[i] = fs.NextInt(); }

		// Precompute parent and matrices
		depth = new int[n + 1];
		up = new int[n + 1][];
		upMat = new int[n + 1][];
		for (int i = 0; i <= n; i++) { up[i] = new int[LOG]; upMat[i] = new int[LOG * 9]; }

		BuildLifting();

		var sb = new StringBuilder(q * 3);
		for (int i = 0; i < q; i++)
		{
			int s = qs[i], t = qt[i];
			int ts = (s >= 4) ? s : 3; // representative triangle for a vertex
			int tt = (t >= 4) ? t : 3;
			if (s == t) { sb.AppendLine("0"); continue; }
			int l = LCA(ts, tt);
			int[] vs = InitVector(ts, s);
			int[] vt = InitVector(tt, t);
			LiftTo(ts, l, vs);
			LiftTo(tt, l, vt);
			int ans = CombineAtL(vs, vt);
			sb.AppendLine(ans.ToString());
		}
		Console.Write(sb.ToString());
	}

	static void BuildLifting()
	{
		var st = new int[n + 5]; int sp = 0;
		int root = 3; up[root][0] = 0; depth[root] = 0; st[sp++] = root;
		var parent = new int[n + 1]; parent[root] = 0;
		var visited = new bool[n + 1]; visited[root] = true;
		while (sp > 0)
		{
			int u = st[--sp];
			for (int e = headT[u]; e != -1; e = nextT[e])
			{
				int w = toT[e]; if (visited[w]) continue; visited[w] = true; parent[w] = u; depth[w] = depth[u] + 1; st[sp++] = w;
			}
		}
		// set up[.][0] and base matrices
		for (int i = 3; i <= n; i++)
		{
			int p = parent[i]; up[i][0] = p;
			if (p != 0) FillBaseMatrix(i, p, upMat[i], 0);
		}
		// binary lifting
		for (int k = 1; k < LOG; k++)
		{
			for (int i = 3; i <= n; i++)
			{
				int mid = up[i][k - 1];
				if (mid == 0) { up[i][k] = 0; CopyIdentity(upMat[i], k * 9); continue; }
				int anc = up[mid][k - 1]; up[i][k] = anc;
				// compose matrices: M(i->anc) = M(i->mid) ⊗ M(mid->anc)
				ComposeInto(upMat[i], (k - 1) * 9, upMat[mid], (k - 1) * 9, upMat[i], k * 9);
			}
		}
	}

	static void CopyIdentity(int[] dst, int off)
	{
		dst[off + 0] = 0; dst[off + 1] = INF; dst[off + 2] = INF;
		dst[off + 3] = INF; dst[off + 4] = 0; dst[off + 5] = INF;
		dst[off + 6] = INF; dst[off + 7] = INF; dst[off + 8] = 0;
	}

	static void FillBaseMatrix(int child, int parent, int[] arr, int off)
	{
		var c = tri[child]; var p = tri[parent];
		int cx = -1, cy = -1, cz = -1;
		// find shared vertices
		for (int i = 0; i < 3; i++)
		{
			if (c[i] == p[0] || c[i] == p[1] || c[i] == p[2]) { if (cx == -1) cx = i; else cy = i; } else cz = i;
		}
		int vx = c[cx], vy = c[cy];
		int px = (p[0] == vx) ? 0 : (p[1] == vx) ? 1 : 2;
		int py = (p[0] == vy) ? 0 : (p[1] == vy) ? 1 : 2;
		int pd = 3 - px - py; // index of parent's third vertex
		for (int i = 0; i < 9; i++) arr[off + i] = INF;
		// row for child vertex vx (cx)
		arr[off + cx * 3 + px] = 0; arr[off + cx * 3 + py] = 1; arr[off + cx * 3 + pd] = 1;
		// row for child vertex vy (cy)
		arr[off + cy * 3 + px] = 1; arr[off + cy * 3 + py] = 0; arr[off + cy * 3 + pd] = 1;
		// row for child vertex cz
		arr[off + cz * 3 + px] = 1; arr[off + cz * 3 + py] = 1; arr[off + cz * 3 + pd] = 2;
	}

	static void ComposeInto(int[] A, int aOff, int[] B, int bOff, int[] C, int cOff)
	{
		// C = A ⊗ B (min-plus)
		for (int j = 0; j < 3; j++)
		{
			int a0 = A[aOff + 0]; int a1 = A[aOff + 1]; int a2 = A[aOff + 2];
			int b0 = B[bOff + j]; int b1 = B[bOff + 3 + j]; int b2 = B[bOff + 6 + j];
			int v0 = a0 + b0; int v1 = a1 + b1; int v2 = a2 + b2; int best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; C[cOff + j] = best;
			// row 2
			a0 = A[aOff + 3]; a1 = A[aOff + 4]; a2 = A[aOff + 5];
			v0 = a0 + b0; v1 = a1 + b1; v2 = a2 + b2; best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; C[cOff + 3 + j] = best;
			// row 3
			a0 = A[aOff + 6]; a1 = A[aOff + 7]; a2 = A[aOff + 8];
			v0 = a0 + b0; v1 = a1 + b1; v2 = a2 + b2; best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; C[cOff + 6 + j] = best;
		}
	}

	static int LCA(int a, int b)
	{
		if (a == b) return a;
		if (depth[a] < depth[b]) { int t = a; a = b; b = t; }
		int diff = depth[a] - depth[b];
		for (int k = 0; k < LOG; k++) if (((diff >> k) & 1) != 0) a = up[a][k];
		if (a == b) return a;
		for (int k = LOG - 1; k >= 0; k--)
		{
			if (up[a][k] != up[b][k]) { a = up[a][k]; b = up[b][k]; }
		}
		return up[a][0];
	}

	static int[] InitVector(int triId, int vertex)
	{
		var tv = tri[triId];
		int[] v = new int[3];
		for (int i = 0; i < 3; i++) v[i] = 1;
		if (tv[0] == vertex) { v[0] = 0; return v; }
		if (tv[1] == vertex) { v[1] = 0; return v; }
		if (tv[2] == vertex) { v[2] = 0; return v; }
		return v; // shouldn't happen
	}

	static void LiftTo(int node, int target, int[] vec)
	{
		int diff = depth[node] - depth[target];
		for (int k = 0; k < LOG; k++)
		{
			if (((diff >> k) & 1) == 0) continue;
			ApplyMat(vec, upMat[node], k * 9);
			node = up[node][k];
		}
	}

	static void ApplyMat(int[] vec, int[] mat, int off)
	{
		// vec' = vec ⊗ mat
		int x0 = vec[0] + mat[off + 0]; int x1 = vec[1] + mat[off + 3]; int x2 = vec[2] + mat[off + 6]; int best0 = x0 < x1 ? x0 : x1; if (x2 < best0) best0 = x2;
		int y0 = vec[0] + mat[off + 1]; int y1 = vec[1] + mat[off + 4]; int y2 = vec[2] + mat[off + 7]; int best1 = y0 < y1 ? y0 : y1; if (y2 < best1) best1 = y2;
		int z0 = vec[0] + mat[off + 2]; int z1 = vec[1] + mat[off + 5]; int z2 = vec[2] + mat[off + 8]; int best2 = z0 < z1 ? z0 : z1; if (z2 < best2) best2 = z2;
		vec[0] = best0; vec[1] = best1; vec[2] = best2;
	}

	static int CombineAtL(int[] a, int[] b)
	{
		int ans = Math.Min(Math.Min(a[0] + b[0], a[1] + b[1]), a[2] + b[2]);
		// different vertices inside L costs +1
		int v = Math.Min(Math.Min(a[0] + b[1], a[0] + b[2]), Math.Min(a[1] + b[0], Math.Min(a[1] + b[2], Math.Min(a[2] + b[0], a[2] + b[1]))));
		if (v + 1 < ans) ans = v + 1;
		return ans;
	}
}