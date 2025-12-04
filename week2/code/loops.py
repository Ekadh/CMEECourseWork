# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that illustrates the use of loops in python scripts

# More loops

#A for loops that prints a series of numbers 0-4
for i in range(5):
    print(i)

#A for loop that prints the items in a list iteratively
my_list = [0, 2, "geronimo", 3.0, True, False]
for k in my_list:
    print(k)

#A for loop that sums up the numbers in a list and prints each sum
total = 0
summands = [0, 1, 11, 111, 1111]
for s in summands:
    total = total + s
    print(total)

#A while loop that prints the numbers 1 to 100 while z is less than 100
z = 0
while z < 100:
    z = z + 1
    print(z)

#A for loop that illustrates the use of break in the loop (the loop breaks at i = 3)
for i in range(1, 6):
    print(i)
    if i == 3:
        break

