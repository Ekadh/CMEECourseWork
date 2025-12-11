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
│ ├── results  
├── README.md  
```
---

## Scripts

1. **boilerplate.sh**

Simple boilerplate script that prints a message.

### Purpose:
Prints “This is a shell script!”

### Usage:
```bash
# run from the `week1` directory
bash code/boilerplate.sh
```

2. **compilelatex.sh**

Compiles a LaTeX document, runs BibTeX, and cleans up auxiliary files.

### Purpose:
Generate a PDF from a .tex file.

### Usage:

```bash
# compile a LaTeX file (run from the `week1` directory)
bash code/compilelatex.sh firstexample.tex
```

3. **concatenatetwofiles.sh**

Concatenates two input files and writes the merged output to ../results/.

### Purpose:
Merge two files into one output file.

### Usage:

```bash
# concatenate two files and save to results (run from the `week1` directory)
bash code/concatenatetwofiles.sh file1.txt file2.txt merged.txt
```

4. **countlines.sh**

Counts the number of lines in a given file.

### Purpose:
Print the number of lines in an input file.

### Usage:

```bash
# count lines in a file
bash code/countlines.sh filename.txt
```

5. **csvtospace.sh**

Converts a .csv file into a space-delimited text file.

### Purpose:
Replace commas with spaces and output .txt to ../results/.

### Usage:

```bash
# convert CSV to space-delimited text and save to ../results/
bash code/csvtospace.sh input.csv
```

Output written to `../results/<input_basename>.txt` (relative to the `week1` folder)

6. **firstbiblio.bib**

Standard BibTeX bibliography file used by LaTeX.

Purpose:
Store reference entries for citation in LaTeX documents.

7. **firstexample.tex**

Example LaTeX file demonstrating document structure, equations, and bibliography.

### Purpose:
Produces firstexample.pdf when compiled.

### Usage:
Compile manually or run:

```bash
# compile the example using the helper script
bash code/compilelatex.sh firstexample.tex
```

8. **myexamplescript.sh**

Simple script that prints a greeting using environment variables.

### Purpose:
Print a message using $USER.

### Usage:

```bash
# run the greeting script
bash code/myexamplescript.sh
```

9. **tabtocsv.sh**

Converts a tab-delimited .txt file into a .csv file.

### Purpose:
Replace tabs with commas and save the output to ../results/.

### Usage:

```bash
# convert a tab-delimited file to CSV
bash code/tabtocsv.sh input.txt
```

10. **tiff2png.sh**

Converts all .tif images in ../data/ to .png files in ../results/.

### Purpose:
Batch-convert TIFF images to PNG.

### Usage:

```bash
# convert TIFFs from data/ to PNGs in results/
bash code/tiff2png.sh
```

11. **unixprac1.txt**

Contains the Unix commands used to complete the FASTA-file exercises.

### Purpose:
Learn how to manage genomic data using Linux commands.

12. **variables.sh**

Demonstrates variables, user input, command substitution, and arithmetic in Bash.

### Purpose:
Practice reading user input and computing sums.

### Usage:

```bash
# run the variables demo; the script may prompt for input
bash code/variables.sh
```

Example interactive session:

```text
Enter two numbers separated by a space
5 7
Their sum is:
12
```

> Note: some scripts (for example `code/compilelatex.sh` and `code/tiff2png.sh`) expect to be run from the `week1` directory so that input/output relative paths resolve correctly.

> Auxiliary files: the directory contains a log file (`code/.log`) and resource files such as `firstbiblio.bib` and `firstexample.tex` which are referenced by the LaTeX workflow.

## Data

**fasta/** — Three FASTA DNA sequence files.

**temperatures/** — Four temperature time-series CSV files.

**spawannxs.txt** — List of scientific bird names.

**NCBS_map.tif** — A TIFF image of my old campus used in tiff2png.sh.

---
