#!/usr/bin/env python3

# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that profiles two functions: one that creates a list of squares using a loop, and another that joins strings using a loop.

#A function that creates a list of squares using a loop
def my_squares(iters):
    out = []
    for i in range(iters):
        out.append(i ** 2)
    return out

#A function that joins strings using a loop
def my_join(iters, string):
    out = ''
    for i in range(iters):
        out += string.join(", ")
    return out

#A function that runs both functions and prints their outputs
def run_my_funcs(x,y):
    print(x,y)
    my_squares(x)
    my_join(x,y)
    return 0

run_my_funcs(10000000,"My string")