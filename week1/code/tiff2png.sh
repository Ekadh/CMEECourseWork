#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that converts .tif files to .png files

#Checking if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Please install ImageMagick first."
    exit 1
fi

shopt -s nullglob
#Storing all tif files in the data folder to an object
tifs=(../data/*.tif)
#Checking whether tif files were found in the data folder
if [ ${#tifs[@]} -eq 0 ]; then
    echo "No tifs found, make sure to store them in the data folder"
    exit 1
fi

#For all files in folder, converting each file to a .png stored in results
for file in "${tifs[@]}";
    do
        echo "Converting $file"
        convert "$file" "../results/$(basename "$file" .tif).png"
done

exit 0
    