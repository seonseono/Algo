import sys
result = []

for i in range(10): 
    n = int(input())
    result.append(n % 42)

print(len(set(result)))