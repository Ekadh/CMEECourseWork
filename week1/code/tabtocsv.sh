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
echo "Creating a comma-delimited version of $1 .."
cat $1 | tr -s "\t" "," >> $1.csv
echo "Done!"
exit 0
