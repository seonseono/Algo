import sys
n, m = map(int, sys.stdin.readline().split())
basket = []

for x in range(1, n+1):
	basket += [x]

for _ in range(m):
	i, j = map(int, sys.stdin.readline().split())
	basket[i-1], basket[j-1] = basket[j-1], basket[i-1]

for y in basket:
	print(y, sep=' ')