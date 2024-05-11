import sys
n, m = map(int, sys.stdin.readline().split())

basket = [i for i in range(1, n+1)]
temp = 0

for _ in range(m):
    i, j = map(int, sys.stdin.readline().split())
    temp = basket[i-1 : j]
    temp.reverse()
    basket[i-1:j] = temp

for i in range(n):
    print(basket[i], end=' ')