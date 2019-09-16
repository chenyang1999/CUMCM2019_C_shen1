from show_R import unzip
import csv
filename="encode.txt"
s=[]
with open(filename) as f:
	content = f.readlines()
#	print(content)
	for c in content:
		s.append(unzip(c))


with open('airplane.csv','w') as f:
	for j in s:
		for i in j:
			print(i)
			f.write(i)
			f.write('\n')
