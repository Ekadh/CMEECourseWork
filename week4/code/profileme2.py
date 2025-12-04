#!/usr/bin/env python3

# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that profiles two functions: one that creates a list of squares using a loop, and another that joins strings using a loop.

import numpy as np

def my_squares(iters):
    out = np.array([i ** 2 for i in range(iters)])
    return out

def my_join(iters, string):
    out = ''
    for i in range(iters):
        out += ", " + string
    return out

def run_my_funcs(x,y):
    print(x,y)
    my_squares(x)
    my_join(x,y)
    return 0

run_my_funcs(10000000,"My string")