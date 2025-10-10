#!/bin/bash

if [ $# -lt 1 ]
then
    echo "Please input a file"
    exit 1
fi

NumLines='wc -l <$1'
echo "The file $1 has $NumLines lines"
echo
