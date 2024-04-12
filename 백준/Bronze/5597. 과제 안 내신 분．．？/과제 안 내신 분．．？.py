import sys
num = list(range(1, 31))

for i in range(28):
    num.remove(int(sys.stdin.readline()))
    
print(num[0], num[1])