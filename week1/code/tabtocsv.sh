#!/bin/sh
# Author: Ekadh er925@ic.ac.uk
# Script: tabtocsv.sh
# Desc: Converts a tab-delimited file to a comma-separated file
# 
# Saves the output into a .csv file
# Arguments: 1 -> tab-delimited file
# Date: Oct 2025
if [ $# -lt 1 ]
then
    echo "Please input a file"
    exit 1
fi

if [ "$(grep -o $'\t' "$1" | wc -l)" -eq 0 ] 
then
    echo "Input file must be a tab-delimited file"
    exit 2
fi

if [ ! -f "$1" ]
then
    echo "File not found"
    exit 3
fi

echo "Creating a csv version of $1 .."
cat $1 | tr -s "\t" "," >> $1.csv
echo "Done!"
exit 0
