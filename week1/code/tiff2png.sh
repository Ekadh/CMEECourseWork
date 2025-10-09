#!/bin/bash

shopt -s nullglob
tifs=(../data/*.tif)
if [ ${#tifs[@]} -eq 0 ]; then
    echo "No tifs found in this folder"
    exit 1
fi

for file in "${tifs[@]}";
    do
        echo "Converting $file"
        convert "$file" "../results/$(basename "$file" .tif).png"
done

exit 0
    