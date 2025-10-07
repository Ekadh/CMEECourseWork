#!/bin/bash
if [ $# -lt 3 ]
then
    echo "Please input the two files to be concatenated and the name of the output file"
    exit 1
fi
if [ ! -f "$1" ] || [ ! -f "$2" ]
then 
    echo "One of the files does not exist"
    exit 2
fi
cat $1 > ../results/$3
cat $2 >> ../results/$3
echo "The merged file is"
cat ../results/$3
exit 0
