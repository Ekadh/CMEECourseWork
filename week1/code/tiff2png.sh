#!/bin/bash
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that converts .tif files to .png files

# Checks if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Please install ImageMagick first."
    exit 1
fi

shopt -s nullglob
#Stores all tif files in the data folder to an object
tifs=(../data/*.tif)
#Checks whether tif files were found in the data folder
if [ ${#tifs[@]} -eq 0 ]; then
    echo "No tifs found in this folder"
    exit 1
fi

#For all files in folder, converts each file to a .png stored in results
for file in "${tifs[@]}";
    do
        echo "Converting $file"
        convert "$file" "../results/$(basename "$file" .tif).png"
done

exit 0
    