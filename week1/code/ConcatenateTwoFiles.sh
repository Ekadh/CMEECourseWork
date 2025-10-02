#!/bin/bash
if [ $# -lt 3 ]
then
    echo "Please input the two files to be concatenated and the name of the output file"
    exit 1
fi
cat $1 > $3
cat $2 >> $3
echo "The merged file is"
cat $3
