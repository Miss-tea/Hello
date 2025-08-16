#!/usr/bin/env python3
import os
import ssl
import socket
import random
from typing import List, Tuple, Optional

# Challenge modulus and target
P = (1 << 256) - 189
HOST = os.getenv("HOST", "ssss.chals.sekai.team")
PORT = int(os.getenv("PORT", "1337"))

# We will try to use t=29 since (P-1) % 29 == 0
# but we also include a generic finder in case we want to adjust.

def find_divisible_t(p: int, lo: int = 20, hi: int = 50) -> List[int]:
	candidates: List[int] = []
	for t in range(hi, lo - 1, -1):
		if (p - 1) % t == 0:
			candidates.append(t)
	return candidates


def modinv(a: int, m: int) -> int:
	# Extended Euclid for modular inverse when gcd(a, m) == 1
	# Python 3.8+: pow(a, -1, m) works; use that for reliability
	return pow(a, -1, m)


def find_root_of_unity(p: int, t: int, max_tries: int = 2000) -> Optional[int]:
	# Find ω with order exactly t, i.e., ω^t ≡ 1 mod p, and for all proper divisors d of t, ω^d != 1
	# For prime t, the only proper divisor is 1.
	for _ in range(max_tries):
		r = random.randrange(2, p - 2)
		omega = pow(r, (p - 1) // t, p)
		if omega == 1:
			continue
		# Verify order divides t
		if pow(omega, t, p) != 1:
			continue
		# Ensure exact order t by checking all prime divisors of t
		ok = True
		# Factor t (small: <= 50). Simple trial division is fine.
		rem = t
		primes: List[int] = []
		f = 2
		while f * f <= rem:
			if rem % f == 0:
				primes.append(f)
				while rem % f == 0:
					rem //= f
			else:
				f += 1
		if rem > 1:
			primes.append(rem)
		for q in primes:
			if pow(omega, t // q, p) == 1:
				ok = False
				break
		if ok:
			return omega
	return None


def inv_dft_coeffs_from_values(y_values: List[int], omega: int, t: int, p: int) -> Tuple[List[int], int]:
	# Given y_k = f(omega^k) for k=0..t-1 and deg(f) <= t, recover c_1..c_{t-1} and s0 = c_0 + c_t
	assert len(y_values) == t
	inv_t = modinv(t % p, p)
	# Precompute omega^{-j} for j=0..t-1 and powers for each k
	omega_pows_pos = [1] * t
	for k in range(1, t):
		omega_pows_pos[k] = (omega_pows_pos[k - 1] * omega) % p
	# We need omega^{-j} = (omega^{t-1})^j since omega^t == 1
	omega_inv = pow(omega, t - 1, p)
	omega_pows_neg = [1] * t
	for j in range(1, t):
		omega_pows_neg[j] = (omega_pows_neg[j - 1] * omega_inv) % p
	# Compute S_j = sum_{k=0}^{t-1} y_k * (omega^{-j})^k
	S = [0] * t
	for j in range(t):
		acc = 0
		w = 1
		w_step = omega_pows_neg[j]
		for k in range(t):
			acc = (acc + y_values[k] * w) % p
			w = (w * w_step) % p
		S[j] = acc
	# Extract coefficients
	c = [0] * (t + 1)
	for j in range(1, t):
		c[j] = (S[j] * inv_t) % p
	c0_plus_ct = (S[0] * inv_t) % p
	return [c[j] for j in range(1, t)], c0_plus_ct


def read_line(conn: ssl.SSLSocket) -> str:
	buf = bytearray()
	while True:
		ch = conn.recv(1)
		if not ch:
			break
		buf += ch
		if ch == b"\n":
			break
	return buf.decode(errors="ignore")


def read_int_line(conn: ssl.SSLSocket) -> int:
	line = read_line(conn)
	# Skip blank lines
	while line.strip() == "":
		line = read_line(conn)
	return int(line.strip())


def send_int(conn: ssl.SSLSocket, val: int) -> None:
	conn.sendall(str(val).encode() + b"\n")


def run_round(conn: ssl.SSLSocket, t: int, omega: int, p: int) -> Tuple[List[int], int]:
	# Send t
	send_int(conn, t)
	# Query points x_k = omega^k
	xs = [1]
	for k in range(1, t):
		xs.append((xs[-1] * omega) % p)
	y_values: List[int] = []
	for x in xs:
		send_int(conn, x)
		y = read_int_line(conn)
		y_values.append(y)
	c_1_to_tminus1, c0_plus_ct = inv_dft_coeffs_from_values(y_values, omega, t, p)
	return c_1_to_tminus1, c0_plus_ct


def solve() -> None:
	random.seed(os.urandom(32))
	# Choose t preferring the largest within [20, 50] that divides P-1
	divisible_ts = find_divisible_t(P)
	if not divisible_ts:
		raise RuntimeError("No t in [20,50] divides P-1; cannot use roots-of-unity method.")
	# Prefer a prime t to simplify order checks; otherwise use the first (largest) available
	def is_prime(n: int) -> bool:
		if n < 2:
			return False
		f = 2
		while f * f <= n:
			if n % f == 0:
				return False
			f += 1
		return True
	prime_ts = [t for t in divisible_ts if is_prime(t)]
	t = (prime_ts[0] if prime_ts else divisible_ts[0])
	omega = find_root_of_unity(P, t)
	if omega is None:
		raise RuntimeError(f"Failed to find primitive {t}-th root of unity")

	context = ssl.create_default_context()
	context.check_hostname = False
	context.verify_mode = ssl.CERT_NONE
	with socket.create_connection((HOST, PORT)) as sock:
		with context.wrap_socket(sock, server_hostname=HOST) as conn:
			# Some banners may appear; read a few lines non-blocking-ish with timeouts
			conn.settimeout(1.0)
			try:
				for _ in range(3):
					line = read_line(conn)
					if not line:
						break
			except Exception:
				pass
			conn.settimeout(None)

			# Round 1
			c1_round1, s_round1_sum = run_round(conn, t, omega, P)
			# We cannot deduce secret yet; send a dummy guess to move to round 2
			send_int(conn, 0)
			# Read the result of first guess (likely ':<')
			try:
				msg = read_line(conn)
				# print(msg, end="")  # Debug
			except Exception:
				pass

			# Round 2
			c1_round2, s_round2_sum = run_round(conn, t, omega, P)
			# Find intersection to identify the unique secret value
			set1 = set(c1_round1)
			set2 = set(c1_round2)
			common = list(set1.intersection(set2))
			if len(common) != 1:
				# Fallback heuristic: if intersection is empty, try the most frequent value among union (extremely unlikely collisions)
				# In practice, reconnect if this happens. We'll raise to avoid submitting wrong value.
				raise RuntimeError(f"Unexpected intersection size {len(common)}; retry the script.")
			secret = common[0]
			send_int(conn, secret)
			# Print the server's response (should include the flag)
			while True:
				line = read_line(conn)
				if not line:
					break
				print(line, end="")


if __name__ == "__main__":
	solve()