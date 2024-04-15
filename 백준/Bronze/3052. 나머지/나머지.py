i_list = []
j_list = []

for i in range(10):
    i = int(input())
    i_list.append(i)

for j in i_list:
	j_list.append(j % 42)

result = list(set(j_list))
print(len(result))