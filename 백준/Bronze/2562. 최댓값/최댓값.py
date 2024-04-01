import sys

n = [int(sys.stdin.readline()) for i in range(9)]
print(max(n), (n.index(max(n)) + 1), end='\n')