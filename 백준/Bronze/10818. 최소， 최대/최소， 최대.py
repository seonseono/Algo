import sys

n = int(sys.stdin.readline())
v = list(map(int, sys.stdin.readline().split()))

print(min(v), max(v))