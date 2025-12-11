# CMEE Coursework Repository

This repository contains my coursework for the *Computational Methods in Ecology and Evolution (CMEE)* programme.  
It documents my progress across multiple weeks while learning Unix, Python, and R for ecological and evolutionary data analysis.

---

## Summary  
This repository contains code, data, and results for weekly assignments covering computational methods commonly used in ecology, evolution, and data science.  
Throughout the course, I developed skills in data manipulation, scripting, automation, simulation, and reproducible workflows using:

- **Unix/Linux shell**
- **Python 3**
- **R (v4)**

The work spans biological data formats, simulation tasks, data visualisation, regression modelling, and algorithmic problem-solving.

---

## Progress Summary

### **Week 1 – Unix/Linux**
- Learned command-line workflows for manipulating files, automating tasks, converting file formats, and compiling LaTeX.
- Wrote Bash scripts for text processing, file transformation, and simple automation.
- Gained familiarity with FASTA files, temperature datasets, and shell scripting fundamentals.

### **Week 2 – Python**
- Practised core Python constructs and data types.
- Wrote scripts involving I/O, control flow, debugging, list comprehensions, data wrangling, and algorithmic tasks.
- Built functions to process biological data, including sequence alignment and oak-species filtering.
- Used doctests for reproducibility and testing.

### **Week 3 – R**
- Performed data wrangling, exploration, and plotting with base R and tidyverse-style functions.
- Applied vectorisation and preallocation for performance.
- Conducted ecological regressions (predator–prey scaling) and analysed climate time series data.
- Practised connecting to remote databases using R.

### **Week 4 – Back to Python**
- Explored Python performance and profiling by implementing and benchmarking small scripts.
- Added `profileme.py` (loop-based implementations: `my_squares`, `my_join`) and `profileme2.py` (vectorised/list-comprehension + NumPy variant) to compare approaches.
- Created `timeitme.py` to benchmark loop vs list-comprehension and string concatenation vs join using Python's `timeit` module.

---

## Project Structure  

```
├── CMEECourseWork  
│ ├── week1: Unix/Linux  
│ │ ├── code  
│ │ ├── data  
│ │ ├── results  
│ ├── week2: Python3  
│ │ ├── code  
│ │ ├── data  
│ │ ├── results  
│ ├── week3: R  
│ │ ├── code  
│ │ ├── data  
│ │ ├── results  
│ ├── week4: Back to python  
│ │ ├── code  
│ │ ├── data  
│ │ ├── results  
├── README.md
```

---

##  Dependencies  
Most scripts rely on the standard libraries for their respective languages.  
Here are some additional dependencies used in specific weeks:

- **System tools:** `pdflatex` (TeX Live / MacTeX) — used to compile `.tex` files in week1/week3; `ImageMagick` (`convert`, `mogrify`) — used for image conversions (e.g. `tiff2png`); `git` — repository version control.
- **Python (3.x):** `numpy` — used in `week4/profileme2.py` for vectorised numeric operations; `pytest` (optional) — useful for running tests (e.g. `week2/test_control_flow.py`).
- **R (>= 4):** `tidyverse` (includes `dplyr`, `ggplot2`, `tidyr`) — used for data wrangling and plotting in week3; `DBI` and `RSQLite` — used for SQL examples found in `week3/SQLinR.R`.

Install examples (macOS / zsh):

```bash
# system
brew install imagemagick
brew install --cask mactex          
# provides pdflatex (large install)

# python packages (in a virtualenv)
python3 -m pip install --upgrade pip
python3 -m pip install numpy pytest

# install common R packages (run inside R)
R -e "install.packages(c('tidyverse','DBI','RSQLite'), repos='https://cloud.r-project.org')"
```


---

## Author  
**Ekadh**  
📧 **Contact:** er925@ic.ac.uk

---

