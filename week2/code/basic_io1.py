# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Basic input/output 1: reading files

#Opening a file to read/edit ##
f = open('../data/test.txt', 'r')

for line in f:
    print(line)

f.close()


#Another example of opening and printing ##
f = open('../data/test.txt', 'r')
for line in f:
    if len(line.strip()) > 0:
        print(line)

f.close()