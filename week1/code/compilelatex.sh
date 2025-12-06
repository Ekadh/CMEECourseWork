#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Compiles a .tex file

#Checking if filename is provided
if [ -z "$1" ]; then
  echo "Error: No filename provided."
  echo "Usage: $0 filename (with .tex extension)"
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

#Checking if .tex is in the input filename
if [[ "$1" != *.tex ]]; then
  echo "Error: Please provide a filename with the .tex extension."
  exit 1
fi

#Compiling the latex file
pdflatex $1
bibtex $1
pdflatex $1
pdflatex $1
evince $1.pdf &

#Cleaning up unnecessary files
rm *.aux
rm *.log
rm *.bbl
rm *.blg
