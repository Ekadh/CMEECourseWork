#!/bin/bash
# Check results folder for the output
if [ $# -lt 3 ]
then
    echo "Please input the two files to be concatenated and the name of the output file (check the results folder afterwards)"
    exit 1
fi
if [ ! -f "$1" ] || [ ! -f "$2" ]
then 
    echo "At least one of the files does not exist"
    exit 2
fi
cat $1 > "../results/$(basename "$3")"
cat $2 >> "../results/$(basename "$3")"
echo "The merged file from $(basename "$1") and $(basename "$2") have been combined into $(basename "$3"), here is the output:"
cat ../results/$3
exit 0
