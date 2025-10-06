#!/bin/bash
if [ $# -lt 2 ]
then
    echo "Please input the csv file and the space-delimited output filename"
    exit 1
fi

if [ ! -f "$1" ]
then
    echo "File not found"
    exit 2
fi

if [[ "$1" != *.csv ]]; then
    echo "Input file must be a .csv file"
    exit 3
fi
echo "Creating a space-delimited version of $1 .."
cat "$1" | tr -s "," " " > $2.txt
echo "Done"
exit 0