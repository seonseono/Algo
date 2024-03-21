T = int(input())
x = 0

for i in range(T):
	a, b = map(int, input().split())
	i = a + b
	x += 1
	print('Case #{}: {}'.format(x, i))