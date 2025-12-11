# week3: Scripts and data for R week

This directory contains all code and data files for **week 3** of the coursework.  
Below is the structure of the folder and brief descriptions of all included scripts and data files.

---

## Directory Structure
```
├── week3  
│ ├── code  
│ │ ├── DataWrang.R  
│ │ ├── Florida.R  
│ │ ├── Florida.tex  
│ │ ├── PP_Regress.R  
│ │ ├── R_conditionals.R  
│ │ ├── SQLinR.R  
│ │ ├── apply1.R  
│ │ ├── apply2.R  
│ │ ├── basic_io.R  
│ │ ├── boilerplate.R  
│ │ ├── break.R  
│ │ ├── browse.R  
│ │ ├── compilelatex.sh
│ │ ├── control_flow.R  
│ │ ├── girko.R
│ │ ├── my_bars.R
│ │ ├── next.R  
│ │ ├── plotLin.R
│ │ ├── preallocate.R  
│ │ ├── sample.R  
│ │ ├── tree_heights.R  
│ │ ├── try.R
│ │ ├── vectorize1.R  
│ ├── data  
│ │ ├── EcolArchives-E089-51-D1.csv  
│ │ ├── KeyWestAnnualMeanTemperature.RData  
│ │ ├── Histogram.png   
│ │ ├── PoundHillData.csv  
│ │ ├── PoundHillMetaData.csv  
│ │ ├── Resource.csv  
│ │ ├── Results.txt  
│ │ ├── trees.csv  
├── README.md  
```
---

## Scripts

Below is a description of each script together with its purpose, usage, and example commands.

1. **apply1.R**

Applies summary functions across rows and columns of a matrix.

### Purpose:
Calculate row means, row variances, and column means using apply().

### Usage:

```bash
# run from the `week3` directory
Rscript code/apply1.R
```

2. **apply2.R**

Uses apply() to run a custom function on matrix rows.

### Purpose:
Apply a user defined function that scales rows based on the sum of their values.

### Usage:

```bash
# run from the `week3` directory
Rscript code/apply2.R
```

3. **basic_io.R**

Demonstrates basic read/write operations in R.

### Purpose:
Import a CSV file and write it back out.

### Usage:

```bash
# run from the `week3` directory
Rscript code/basic_io.R
```

4. **boilerplate.R**

First R function script; prints the class of two input arguments.

### Purpose:
Illustrate writing and calling simple functions in R.

### Usage:

```bash
# run from the `week3` directory
Rscript code/boilerplate.R
```

Example call (inside R):

```r
my_function(1, "mew")
```

5. **break.R**

Uses a while loop with a break condition.

### Purpose:
Illustrate breaking out of loops when a threshold is reached.

### Usage:

```bash
# run from the `week3` directory
Rscript code/break.R
```

6. **browse.R**

Exponential growth model with browser() for debugging.

### Purpose:
Demonstrate vector preallocation and debugging inside loops.

### Usage:

```bash
# run from the `week3` directory
Rscript code/browse.R
```

7. **control_flow.R**

Examples of if, for, and while loops in R.

### Purpose:
Practice looping structures.

### Usage:

```bash
# run from the `week3` directory
Rscript code/control_flow.R
```

8. **DataWrang.R**

Wrangles and reshapes the Pound Hill dataset.

### Purpose:
Data cleaning, transposition, melt() reshaping, factor conversion, and summarisation.

### Usage:

```bash
# run from the `week3` directory
Rscript code/DataWrang.R
```

9. **Florida.R**

Permutation test to determine whether Key West temperatures are increasing.

### Purpose:
Calculate observed and null correlations, generate histogram, compute p-values.

### Usage:

```bash
# run from the `week3` directory
Rscript code/Florida.R
```

10. **Florida.tex**

LaTeX file summarising results from Florida.R.

### Purpose:
Produce a formatted PDF report interpreting the permutation test.

### Usage:

```bash
# run from the `week3` directory
bash code/compilelatex.sh code/Florida.tex
```

11. **next.R**

For-loop demonstrating the use of next to skip iterations.

### Purpose:
Show how to continue the loop without executing remaining code in the iteration.

### Usage:

```bash
# run from the `week3` directory
Rscript code/next.R
```

11. **next.R**

For-loop demonstrating the use of next to skip iterations.

### Purpose:
Show how to continue the loop without executing remaining code in the iteration.

### Usage:

```bash
# run from the `week3` directory
Rscript code/next.R
```

12. **PP_Regress.R**

Plots log-scaled predator–prey mass regressions and exports linear model summaries.

### Purpose:
Produce regression plots across feeding types and lifestages.

### Usage:

```bash
# run from the `week3` directory
Rscript code/PP_Regress.R
```

13. **preallocate.R**

Compares runtime of functions with and without vector preallocation.

### Purpose:
Illustrate speed differences between reallocating vs preallocating vectors.

### Usage:

```bash
# run from the `week3` directory
Rscript code/preallocate.R
```

14. **R_conditionals.R**

Collection of conditional-based functions (even/odd, powers of 2, primality).

### Purpose:
Demonstrate nested if logic and numeric testing.

### Usage:

```bash
# run from the `week3` directory
Rscript code/R_conditionals.R
```

15. **sample.R**

Shows how sample(), loops, lapply(), and sapply() perform repeated sampling calculations.

### Purpose:
Compare efficiency of loops, vectorised functions, and apply-family operations.

### Usage:

```bash
# run from the `week3` directory
Rscript code/sample.R
```

16. **SQLinR.R**

Connects to a SQLite database, writes/queries tables, and imports CSV data into SQL.

### Purpose:
Demonstrate basic SQL operations inside R using the sqldf and RSQLite packages.

### Usage:

```bash
# run inside R: source("code/SQLinR.R")
# or from the shell (run from the `week3` directory):
Rscript code/SQLinR.R
```

17. **tree_heights.R**

Computes tree heights from ground distance and angle measurements.

### Purpose:
Apply trigonometric formulae and export enriched dataset.

### Usage:

```bash
# compute tree heights from distance/angle data
Rscript code/tree_heights.R
```

18. **vectorize1.R**

Compares loop-based summation to vectorised sum().

### Purpose:
Demonstrate the dramatic performance difference from vectorisation.

### Usage:

```bash
Rscript code/vectorize1.R
```

19. **compilelatex.sh**

Helper shell script to compile LaTeX documents used in this week (runs `pdflatex`/`bibtex` and cleans auxiliaries).

### Purpose:
Compile `.tex` files (for example `Florida.tex`) into PDFs and manage auxiliary files.

### Usage:

```bash
# run from the `week3` directory
bash code/compilelatex.sh code/Florida.tex
```

20. **girko.R**

Implements a small numerical example using Girko's circular law (or a related demonstration script).

### Purpose:
Demonstrate matrix operations / plotting for a short numerical example.

### Usage:

```bash
Rscript code/girko.R
```

21. **my_bars.R**

Creates example barplots (used while learning base plotting functions).

### Purpose:
Show barplot construction and saving plots to file.

### Usage:

```bash
Rscript code/my_bars.R
```

22. **plotLin.R**

Produces example linear plots used in plotting/graphics exercises.

### Purpose:
Generate line plots and save PNG outputs.

### Usage:

```bash
Rscript code/plotLin.R
```

23. **try.R**

Demonstrates use of `try()` and simple error handling in R.

### Purpose:
Illustrate how `try()` captures errors without stopping execution.

### Usage:

```bash
Rscript code/try.R
```

---

## Data

1. **EcolArchives-E089-51-D1.csv** — Predator and prey data used to complete the PP_Regress code.  
2. **Histogram.png** — A histogram containing correlation values with shuffled temperatures.  
3. **KeyWestAnnualMeanTemperature.RData** — A file containing mena temperatures for each year in Florida.  
4. **PoundHillData.csv** - A csv file containing past quadrat sampling data.  
5. **PoundHillMetaData.csv** — A metadata file explaining some of the variables investigated in the Pound Hill dataset.  
6. **trees.csv** - Trees and their respective distances and angles used to measure tree height.
7. **Resource.csv** — Additional resource to use with`SQLinR.R`.
8. **Results.txt** — Text output file needed for `my_bars.R`.

---
