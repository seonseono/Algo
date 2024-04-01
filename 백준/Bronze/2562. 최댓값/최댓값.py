import sys
n = [int(sys.stdin.readline()) for i in range(9)]
print(max(n))
print(n.index(max(n)) + 1)