# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A group of functions that print character strings using loops

## LOOP FUNCTIONS ##

#A function that prints hello for every value of x divisible by 3
def hello_1(x):
    for j in range(x):
        if j % 3 == 0:
            print("hello")
    print('')

hello_1(12)

#A function that prints hello for every value of j in range x that is divisible by 5 or 4 with a remainder of 3
def hello_2(x):
    for j in range(x):
        if j % 5 == 3:
            print('hello')
        elif j % 4 == 3:
            print('hello')
    print(' ')

hello_2(12)

#A function that prints hello between the range of values x and y
def hello_3(x, y):
    for i in range(x, y):
        print("hello")
    print('')

hello_3(3, 17)

#A function that prints hello for every 3 values of x until x is 15
def hello_4(x):
    while x != 15:
        print("hello")
        x = x + 3
    print('')

hello_4(0)

#A function that prints hello 3 times when x is 31 and once when x is 18
def hello_5(x):
    while x < 100:
        if x == 31:
            for k in range(7):
                print('hello')
        elif x == 18:
            print('hello')
        x = x + 1
    print(' ')

hello_5(12)

#A function that print hello + a number y while y is less than 7
def hello_6(x, y):
    while x:
        print("hello_" + str(y))
        y += 1
        if y == 7:
            break
    print('')

hello_6(True, 1)
