# week2: Scripts and data for Python week

This directory contains all code and data files for **week 2** of the coursework.  
Below is the structure of the folder and brief descriptions of all included scripts and data files.

---

## Directory Structure
```
├── week2  
│ ├── code  
│ │ ├── align_seqs.py  
│ │ ├── basic_csv.py  
│ │ ├── basic_io1.py  
│ │ ├── basic_io2.py  
│ │ ├── basic_io3.py  
│ │ ├── boilerplate.py  
│ │ ├── cfexercises1.py  
│ │ ├── cfexercises2.py  
│ │ ├── control_flow.py  
│ │ ├── debugme.py  
│ │ ├── dictionary.py  
│ │ ├── lc1.py  
│ │ ├── lc2.py  
│ │ ├── loops.py  
│ │ ├── myexamplescript.py  
│ │ ├── oaks.py  
│ │ ├── oaks_debugme.py  
│ │ ├── sysargv.py  
│ │ ├── test_control_flow.py  
│ │ ├── tuple.py  
│ │ ├── using_name.py  
│ ├── data  
│ │ ├── JustOaksData.csv  
│ │ ├── bodymass.csv   
│ │ ├── testfasta.fasta  
│ │ ├── TestOaksData.csv  
│ │ ├── testcsv.csv  
├── README.md  
```
---

## Scripts

1. **align_seqs.py**

Aligns two DNA sequences from a FASTA file and outputs the best alignment.

Purpose:
Find the best alignment between two sequences by sliding and scoring matches.

Usage:

python3 align_seqs.py


Output:
Alignment written to ../results/align_output.txt.

2. **basic_csv.py**

Reads a CSV file and writes selected columns to a new CSV.

Purpose:
Practice reading and writing CSV files using csv.reader and csv.writer.

Usage:

python3 basic_csv.py

3–5. **basic_io1.py, basic_io2.py, basic_io3.py**

Scripts demonstrating basic file reading, writing, and pickling.

Purpose:

basic_io1.py: open and read text files

basic_io2.py: write lists to a text file

basic_io3.py: store/load Python objects with pickle

Usage:

python3 basic_io1.py
python3 basic_io2.py
python3 basic_io3.py

6. **boilerplate.py**

Simple example Python program showing structure of main() and __name__ == "__main__".

Purpose:
Print a message and demonstrate program entry points.

Usage:

python3 boilerplate.py

7. **cfexercises1.py**

Collection of functions for mathematical operations and control flow exercises.

Purpose:
Practise writing functions involving square roots, comparisons, sorting, and factorials.

Usage:

python3 cfexercises1.py

8. **cfexercises2.py**

Exercises demonstrating loops and conditional execution.

Purpose:
Explore for-loops, while-loops, and break statements.

Usage:

python3 cfexercises2.py

9. **control_flow.py**

Illustrates conditional logic with functions for parity, divisors, and prime detection.

Purpose:
Understand branching logic and prime-number calculations.

Usage:

python3 control_flow.py

10. **debugme.py**

Buggy script containing a ZeroDivisionError.

Purpose:
Practise debugging Python functions.

Usage:

python3 debugme.py

11. **dictionary.py**

Creates a dictionary mapping mammal orders to species using loops and a comprehension.

Purpose:
Practise building dictionaries and using set operations.

Usage:

python3 dictionary.py

12. **lc1.py**

List comprehension exercises using tuples of bird data.

Purpose:
Extract Latin names, common names, and body mass values using list comprehensions.

Usage:

python3 lc1.py

13. **lc2.py**

More list comprehension exercises using rainfall data.

Purpose:
Filter data using conditions (>100 mm rainfall, <50 mm rainfall).

Usage:

python3 lc2.py

14. **loops.py**

Simple examples of for and while loops.

Purpose:
Understand iteration over ranges, lists, and while-loops with break statements.

Usage:

python3 loops.py

15. **myexamplescript.py**

Contains a function that squares a number.

Usage:

python3 myexamplescript.py

16. **oaks.py**

Finds oak species from a list using functions and list comprehensions.

Purpose:
Filter species names beginning with Quercus.

Usage:

python3 oaks.py

17. **oaks_debugme.py**

Debugged version of the oak-filtering script.

Purpose:
Debugging and CSV reading/writing practice.

Usage:

python3 oaks_debugme.py

18. **sysargv.py**

Demonstrates the use of sys.argv for passing command-line arguments.

Usage:

python3 sysargv.py arg1 arg2

19. **test_control_flow.py**

Uses doctests to validate functions from control_flow.py.

Purpose:
Learn how to write and run doctests.

Run doctests:

python3 -m doctest -v test_control_flow.py

20. **tuple.py**

Prints the contents of a tuple of bird tuples.

Usage:

python3 tuple.py

21. **using_name.py**

Demonstrates the behaviour of __name__ depending on whether the script is run or imported.

Usage:

python3 using_name.py

---

## Data

1. **JustOaksData.csv** — A csv file containing oak genus and species names only.  
2. **TestOaksData.csv** — A csv file containing many tree genera and species names.  
3. **bodymass.csv** — A csv file containing body mass data for some primates.  
4. **testcsv.csv** - A csv file containing body mass and other data for some primates.  
5. **testfasta.fasta** — A test fasta file for the align_seqs.py problem which is called automatically.  

---
