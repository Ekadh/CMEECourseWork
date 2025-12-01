#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Counts lines in an input file

#Checks for an input file
if [ $# -lt 1 ]
then
    echo "Please input a file"
    exit 1
fi

#Counts lines
NumLines=`wc -l <$1`
echo "The file $1 has $NumLines lines"
echo
