import sys

n, m = map(int, sys.stdin.readline().split())
basket = [0] * n

for x in range(m):
	i, j, k = map(int, sys.stdin.readline().split())
	basket[i-1:j] = [k] * (j - i + 1)
    
print(' '.join(map(str, basket)))