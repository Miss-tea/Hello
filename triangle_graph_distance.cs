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
	static int[] headT, toT, nextT; static int edgePtrT;
	static void AddT(int u, int v) { toT[edgePtrT] = v; nextT[edgePtrT] = headT[u]; headT[u] = edgePtrT++; }

	// triangle vertices flattened
	static int[] tri0, tri1, tri2;
	static long Key(int a, int b) { if (a > b) { int t = a; a = b; b = t; } return ((long)a << 32) | (uint)b; }

	const int LOG = 20; // sufficient for n <= 2e5
	static int[] depth;
	static int[] up; // size (n+1)*LOG
	static int[] mat; // size (n+1)*LOG*9, flattened 3x3 per level
	static readonly int INF = 1 << 28;

	static int[] qs, qt;

	static int UpIndex(int node, int k) => node * LOG + k;
	static int MatOffset(int node, int k) => (node * LOG + k) * 9;

	public static void Main()
	{
		var fs = new FastScanner(Console.OpenStandardInput());
		n = fs.NextInt();

		// Build triangle tree
		headT = new int[n + 5]; Array.Fill(headT, -1);
		toT = new int[Math.Max(1, (n - 3) * 2 + 5)]; nextT = new int[toT.Length]; edgePtrT = 0;

		tri0 = new int[n + 1]; tri1 = new int[n + 1]; tri2 = new int[n + 1];
		tri0[3] = 1; tri1[3] = 2; tri2[3] = 3;

		var map = new System.Collections.Generic.Dictionary<long, int>(2 * n);
		map[Key(1, 2)] = 3; map[Key(2, 3)] = 3; map[Key(1, 3)] = 3;

		for (int i = 4; i <= n; i++)
		{
			int u = fs.NextInt(); int v = fs.NextInt();
			tri0[i] = i; tri1[i] = u; tri2[i] = v;
			int p = map[Key(u, v)];
			AddT(p, i); AddT(i, p);
			map[Key(u, v)] = i;
			map[Key(u, i)] = i; map[Key(v, i)] = i;
		}

		q = fs.NextInt();
		qs = new int[q]; qt = new int[q];
		for (int i = 0; i < q; i++) { qs[i] = fs.NextInt(); qt[i] = fs.NextInt(); }

		// Lifting arrays
		depth = new int[n + 1];
		up = new int[(n + 1) * LOG];
		mat = new int[(n + 1) * LOG * 9];

		BuildLifting();

		var sb = new StringBuilder(q * 3);
		for (int i = 0; i < q; i++)
		{
			int s = qs[i], t = qt[i];
			if (s == t) { sb.AppendLine("0"); continue; }
			int ts = (s >= 4) ? s : 3;
			int tt = (t >= 4) ? t : 3;
			int l = LCA(ts, tt);
			int a0, a1, a2; InitVector(ts, s, out a0, out a1, out a2);
			int b0, b1, b2; InitVector(tt, t, out b0, out b1, out b2);
			LiftTo(ts, l, ref a0, ref a1, ref a2);
			LiftTo(tt, l, ref b0, ref b1, ref b2);
			int ans = CombineAtL(a0, a1, a2, b0, b1, b2);
			sb.AppendLine(ans.ToString());
		}
		Console.Write(sb.ToString());
	}

	static void BuildLifting()
	{
		// BFS/DFS to set parent and depth
		var st = new int[n + 5]; int sp = 0; bool[] vis = new bool[n + 1];
		int root = 3; vis[root] = true; depth[root] = 0; up[UpIndex(root, 0)] = 0; st[sp++] = root;
		while (sp > 0)
		{
			int u = st[--sp];
			for (int e = headT[u]; e != -1; e = nextT[e])
			{
				int w = toT[e]; if (vis[w]) continue; vis[w] = true; depth[w] = depth[u] + 1; up[UpIndex(w, 0)] = u; st[sp++] = w;
			}
		}
		// base matrices (k=0)
		for (int i = 3; i <= n; i++)
		{
			int p = up[UpIndex(i, 0)];
			if (p != 0) FillBaseMatrix(i, p, MatOffset(i, 0));
			else SetIdentity(MatOffset(i, 0));
		}
		// binary lifting
		for (int k = 1; k < LOG; k++)
		{
			for (int i = 3; i <= n; i++)
			{
				int mid = up[UpIndex(i, k - 1)];
				if (mid == 0) { up[UpIndex(i, k)] = 0; SetIdentity(MatOffset(i, k)); }
				else
				{
					int anc = up[UpIndex(mid, k - 1)];
					up[UpIndex(i, k)] = anc;
					ComposeInto(MatOffset(i, k - 1), MatOffset(mid, k - 1), MatOffset(i, k));
				}
			}
		}
	}

	static void SetIdentity(int off)
	{
		mat[off + 0] = 0; mat[off + 1] = INF; mat[off + 2] = INF;
		mat[off + 3] = INF; mat[off + 4] = 0; mat[off + 5] = INF;
		mat[off + 6] = INF; mat[off + 7] = INF; mat[off + 8] = 0;
	}

	static void FillBaseMatrix(int child, int parent, int off)
	{
		int ca = tri0[child], cb = tri1[child], cc = tri2[child];
		int pa = tri0[parent], pb = tri1[parent], pc = tri2[parent];
		// identify which two child vertices are shared with parent
		int cx = -1, cy = -1, cz = -1; // indices 0..2 in child's ordering
		if (ca == pa || ca == pb || ca == pc) { if (cx == -1) cx = 0; else cy = 0; } else cz = 0;
		if (cb == pa || cb == pb || cb == pc) { if (cx == -1) cx = 1; else cy = 1; } else cz = 1;
		if (cc == pa || cc == pb || cc == pc) { if (cx == -1) cx = 2; else cy = 2; } else cz = 2;
		int vx = (cx == 0 ? ca : (cx == 1 ? cb : cc));
		int vy = (cy == 0 ? ca : (cy == 1 ? cb : cc));
		int px = (pa == vx ? 0 : (pb == vx ? 1 : 2));
		int py = (pa == vy ? 0 : (pb == vy ? 1 : 2));
		int pd = 3 - px - py;
		// initialize INF
		for (int i = 0; i < 9; i++) mat[off + i] = INF;
		// transitions: distance inside union of two triangles
		mat[off + cx * 3 + px] = 0; mat[off + cx * 3 + py] = 1; mat[off + cx * 3 + pd] = 1;
		mat[off + cy * 3 + px] = 1; mat[off + cy * 3 + py] = 0; mat[off + cy * 3 + pd] = 1;
		mat[off + cz * 3 + px] = 1; mat[off + cz * 3 + py] = 1; mat[off + cz * 3 + pd] = 2;
	}

	static void ComposeInto(int aOff, int bOff, int cOff)
	{
		// C = A ⊗ B where each is 3x3 at given offsets
		for (int j = 0; j < 3; j++)
		{
			int b0 = mat[bOff + j]; int b1 = mat[bOff + 3 + j]; int b2 = mat[bOff + 6 + j];
			int a0 = mat[aOff + 0]; int a1 = mat[aOff + 1]; int a2 = mat[aOff + 2];
			int v0 = a0 + b0; int v1 = a1 + b1; int v2 = a2 + b2; int best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; mat[cOff + j] = best;
			a0 = mat[aOff + 3]; a1 = mat[aOff + 4]; a2 = mat[aOff + 5];
			v0 = a0 + b0; v1 = a1 + b1; v2 = a2 + b2; best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; mat[cOff + 3 + j] = best;
			a0 = mat[aOff + 6]; a1 = mat[aOff + 7]; a2 = mat[aOff + 8];
			v0 = a0 + b0; v1 = a1 + b1; v2 = a2 + b2; best = v0 < v1 ? v0 : v1; if (v2 < best) best = v2; mat[cOff + 6 + j] = best;
		}
	}

	static int LCA(int a, int b)
	{
		if (a == b) return a;
		if (depth[a] < depth[b]) { int tmp = a; a = b; b = tmp; }
		int diff = depth[a] - depth[b];
		for (int k = 0; k < LOG; k++) if (((diff >> k) & 1) != 0) a = up[UpIndex(a, k)];
		if (a == b) return a;
		for (int k = LOG - 1; k >= 0; k--)
		{
			int ua = up[UpIndex(a, k)], ub = up[UpIndex(b, k)];
			if (ua != ub) { a = ua; b = ub; }
		}
		return up[UpIndex(a, 0)];
	}

	static void InitVector(int triId, int vertex, out int v0, out int v1, out int v2)
	{
		if (triId == 3)
		{
			// vertices are 1,2,3
			v0 = (vertex == 1) ? 0 : 1;
			v1 = (vertex == 2) ? 0 : 1;
			v2 = (vertex == 3) ? 0 : 1;
			return;
		}
		// for triId >= 4: ordering is (id, u, v)
		if (vertex == tri0[triId]) { v0 = 0; v1 = 1; v2 = 1; return; }
		if (vertex == tri1[triId]) { v0 = 1; v1 = 0; v2 = 1; return; }
		if (vertex == tri2[triId]) { v0 = 1; v1 = 1; v2 = 0; return; }
		v0 = 1; v1 = 1; v2 = 1;
	}

	static void ApplyMatToVector(int off, ref int x, ref int y, ref int z)
	{
		int nx = x + mat[off + 0]; int ny = y + mat[off + 3]; int nz = z + mat[off + 6]; int best0 = nx < ny ? nx : ny; if (nz < best0) best0 = nz;
		int mx = x + mat[off + 1]; int my = y + mat[off + 4]; int mz = z + mat[off + 7]; int best1 = mx < my ? mx : my; if (mz < best1) best1 = mz;
		int px = x + mat[off + 2]; int py = y + mat[off + 5]; int pz = z + mat[off + 8]; int best2 = px < py ? px : py; if (pz < best2) best2 = pz;
		x = best0; y = best1; z = best2;
	}

	static void LiftTo(int node, int target, ref int x, ref int y, ref int z)
	{
		int diff = depth[node] - depth[target];
		for (int k = 0; k < LOG; k++)
		{
			if (((diff >> k) & 1) == 0) continue;
			ApplyMatToVector(MatOffset(node, k), ref x, ref y, ref z);
			node = up[UpIndex(node, k)];
		}
	}

	static int CombineAtL(int a0, int a1, int a2, int b0, int b1, int b2)
	{
		int same = a0 + b0; int t = a1 + b1; if (t < same) same = t; t = a2 + b2; if (t < same) same = t;
		int cross = a0 + b1; t = a0 + b2; if (t < cross) cross = t; t = a1 + b0; if (t < cross) cross = t; t = a1 + b2; if (t < cross) cross = t; t = a2 + b0; if (t < cross) cross = t; t = a2 + b1; if (t < cross) cross = t;
		int ans = same; t = cross + 1; if (t < ans) ans = t; return ans;
	}
}