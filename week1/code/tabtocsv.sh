#!/bin/sh
# Author: Ekadh er925@ic.ac.uk
# Desc: Converts a tab-delimited file to a comma-separated file
# Saves the output into a .csv file
# Date: Oct 2025

#Checks if there is an input file
if [ $# -lt 1 ]
then
    echo "Please input a file"
    exit 1
fi

#Checks if the file exists 
if [ ! -f "$1" ]
then
    echo "File not found"
    exit 2
fi

#Checks whether there are tabs in the input file
if [ "$(grep -o $'\t' "$1" | wc -l)" -eq 0 ] 
then
    echo "Input file must be a tab-delimited file"
    exit 3
fi

echo "Creating a csv version of $1 .."
#Changes all tabs to commas and stores in results
cat $1 | tr -s "\t" "," >> "../results/$(basename "$1" .txt).csv"
echo "Done, check your results folder"
exit 0
