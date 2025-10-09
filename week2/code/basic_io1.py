## Opening a file to read/edit ##
f = open('../sandbox/test.txt', 'r')

for line in f:
    print(line)

f.close()


## Another example of opening and printing ##
f = open('../sandbox/test.txt', 'r')
for line in f:
    if len(line.strip()) > 0:
        print(line)

f.close()