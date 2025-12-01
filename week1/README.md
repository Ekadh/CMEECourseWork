# week1: Scripts and data

This directory contains all code and data files for **week 1** of the coursework.  
Below is the structure of the folder and brief descriptions of all included scripts and data files.

---

## Directory Structure
```
├── week1  
│ ├── code  
│ │ ├── boilerplate.sh  
│ │ ├── compilelatex.sh  
│ │ ├── concatenatetwofiles.sh  
│ │ ├── countlines.sh  
│ │ ├── csvtospace.sh  
│ │ ├── firstbiblio.bib  
│ │ ├── firstexample.tex  
│ │ ├── myexamplescript.sh  
│ │ ├── tabtocsv.sh  
│ │ ├── tiff2png.sh  
│ │ ├── unixprac1.txt  
│ │ ├── variables.sh  
│ ├── data  
│ │ ├── fasta  
│ │ │ ├── 407228326.fasta  
│ │ │ ├── 407228412.fasta  
│ │ │ ├── E.coli.fasta  
│ │ ├── temperatures  
│ │ │ ├── 1800.csv  
│ │ │ ├── 1801.csv  
│ │ │ ├── 1802.csv  
│ │ │ ├── 1803.csv  
│ │ ├── spawannxs.txt  
│ │ ├── NCBS_map.tif  
├── README.md  
```
---

## Scripts

1. **boilerplate.sh**

Simple boilerplate script that prints a message.

Purpose:
Prints “This is a shell script!”

Usage:

bash boilerplate.sh

2. **compilelatex.sh**

Compiles a LaTeX document, runs BibTeX, and cleans up auxiliary files.

Purpose:
Generate a PDF from a .tex file.

Usage:

bash compilelatex.sh <filename_without_extension>


Example:

bash compilelatex.sh firstexample

3. **concatenatetwofiles.sh**

Concatenates two input files and writes the merged output to ../results/.

Purpose:
Merge two files into one output file.

Usage:

bash concatenatetwofiles.sh file1 file2 output.txt


Example:

bash concatenatetwofiles.sh a.txt b.txt merged.txt

4. **countlines.sh**

Counts the number of lines in a given file.

Purpose:
Print the number of lines in an input file.

Usage:

bash countlines.sh filename

5. **csvtospace.sh**

Converts a .csv file into a space-delimited text file.

Purpose:
Replace commas with spaces and output .txt to ../results/.

Usage:

bash csvtospace.sh input.csv output.txt


Output: ../results/output.txt

6. **firstbiblio.bib**

Standard BibTeX bibliography file used by LaTeX.

Purpose:
Store reference entries for citation in LaTeX documents.

7. **firstexample.tex**

Example LaTeX file demonstrating document structure, equations, and bibliography.

Purpose:
Produces firstexample.pdf when compiled.

Usage:
Compile manually or run:

bash compilelatex.sh firstexample

8. **myexamplescript.sh**

Simple script that prints a greeting using environment variables.

Purpose:
Print a message using $USER.

Usage:

bash myexamplescript.sh

9. **tabtocsv.sh**

Converts a tab-delimited .txt file into a .csv file.

Purpose:
Replace tabs with commas and save the output to ../results/.

Usage:

bash tabtocsv.sh input.txt

10. **tiff2png.sh**

Converts all .tif images in ../data/ to .png files in ../results/.

Purpose:
Batch-convert TIFF images to PNG.

Usage:

bash tiff2png.sh

11. **unixprac1.txt**

Contains the Unix commands used to complete the FASTA-file exercises.

Purpose:
Command reference for Week 1 tasks.

12. **variables.sh**

Demonstrates variables, user input, command substitution, and arithmetic in Bash.

Purpose:
Practice reading user input and computing sums.

Usage:

bash variables.sh arg1 arg2


Example Interactive Session:

Enter two numbers separated by a space
5 7
Their sum is:
12

## Data

**fasta/** — Three FASTA DNA sequence files.

**temperatures/** — Four temperature time-series CSV files.

**spawannxs.txt** — List of scientific bird names.

**NCBS_map.tif** — A TIFF image used in tiff2png.sh.

---
