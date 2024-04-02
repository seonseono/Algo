import sys
n = int(sys.stdin.readline())
n_list = [int(sys.stdin.readline()) for i in range(n)]
n_list.sort()

for j in n_list:
    print(j)