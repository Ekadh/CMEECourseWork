#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Compiles a .tex file

#Checking if filename is provided
if [ -z "$1" ]; then
  echo "Error: No filename provided."
  echo "Usage: $0 filename.tex"
  exit 1
fi

#Checking if the .tex file exists
if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found!"
  exit 1
fi

#Checking if pdflatex is installed
if ! command -v pdflatex &> /dev/null; then
  echo "Error: pdflatex is not installed. Please install it and try again."
  exit 1
fi

#Checking if bibtex is installed
if ! command -v bibtex &> /dev/null; then
  echo "Error: bibtex is not installed. Please install it and try again."
  exit 1
fi

#Checking file extension
if [[ "$1" != *.tex ]]; then
  echo "Error: Please provide a .tex file."
  exit 1
fi

# Extracting basename
basename="${1%.tex}"

# Compiling latex
pdflatex "$1"
bibtex "$basename"
pdflatex "$1"
pdflatex "$1"

# Moving PDF into results folder
mv "${basename}.pdf" ../results/
echo "PDF moved to results folder."

# Cleaning up auxiliary files safely
rm "${basename}.aux" "${basename}.log" "${basename}.bbl" "${basename}.blg" 2>/dev/null
