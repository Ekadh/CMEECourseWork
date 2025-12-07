#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Takes a csv file as input and changes the format to a space-delimited file

#Checks whether the input file was provided
if [ $# -lt 1 ]
then
    echo "Please input the csv file to be converted"
    exit 1
fi

#Checks whether the input file exists
if [ ! -f "$1" ]
then
    echo "File not found"
    exit 2
fi

#Checks whether the input file is a .csv file
if [[ "$1" != *.csv ]]; then
    echo "Input file must be a .csv file"
    exit 3
fi

echo "Creating a space-delimited version of $1 .."
#Changes all commas to spaces and stores in results
cat "$1" | tr -s "," " " > "../results/$(basename "$1" .csv).txt"
echo "Done"
exit 0