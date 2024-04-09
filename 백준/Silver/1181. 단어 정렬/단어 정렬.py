import sys
N = int(sys.stdin.readline())
words = []

for i in range(N):
    words.append(input().strip())
    
new = list(set(words))
new.sort(key=lambda x: (len(x), x))

for word in new:
    print(word)