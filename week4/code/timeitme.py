# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that compares the performance of loops vs list comprehensions and string join methods

# loops vs. list comprehensions: which is faster?

iters = 1000000

import timeit

from profileme import my_squares as my_squares_loops

from profileme2 import my_squares as my_squares_lc

# loops vs. the join method for strings: which is faster?

mystring = "my string"

from profileme import my_join as my_join_join

from profileme2 import my_join as my_join