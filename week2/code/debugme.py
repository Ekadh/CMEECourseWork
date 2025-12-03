# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A function that will give a zero-division error

def buggyfunc(x):
    y = x
    for i in range(x):
        y = y-1
        z = x/y
    return z 

buggyfunc(20)