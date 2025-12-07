# week1: Scripts and data

This directory contains all code and data files for **week 1** of the coursework.  
Below is the structure of the folder and brief descriptions of all included scripts and data files.

---

## Directory Structure
```
├── week4  
│ ├── code  
│ │ ├── profileitme.py  
│ │ ├── profileme2.py  
│ │ ├── timeitme.py  
│ ├── README.md
```

## Scripts

1. **profileitme.py**

Profiles two functions implemented using explicit Python loops.

Purpose:
my_squares() builds a list of squares using a for-loop.

my_join() constructs a long string using repeated concatenation.

run_my_funcs() executes both functions to allow timing/profiling.

Usage:

python3 profileitme.py


Example Output:
Prints x and y values, then runs both functions.

2. **profileme2.py**

A vectorised and slightly more efficient version of profileitme.py, using NumPy and an improved string-joining approach.

Purpose:
my_squares() uses a list comprehension wrapped in np.array for faster numeric operations.

my_join() appends strings in a loop (still slow, used for comparison).

run_my_funcs() runs both functions for profiling.

Dependencies:
Requires NumPy.

Usage:

python3 profileme2.py

3. **timeitme.py**

Compares runtime performance between functions imported from profileitme.py and profileme2.py using timeit.

Purpose:
Timing loops vs list comprehensions for building lists of squares

Usage:

python3 timeitme.py


This script imports functions like:

from profileme import my_squares as my_squares_loops
from profileme2 import my_squares as my_squares_lc


and uses Python’s timeit module to measure execution speed.

## Data

There are no data files for week4 — all scripts operate on generated values.