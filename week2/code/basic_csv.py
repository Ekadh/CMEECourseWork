# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that reads and writes csv files

import csv

## Transfers each row of the csv file into a temp list and prints each line ##
with open('../data/testcsv.csv', 'r') as f:
    csvread = csv.reader(f)
    temp = []
    for row in csvread:
        temp.append(tuple(row))
        print(row)
        print("The species is ", row[0])

## Writes a csv file with species AND body mass 
with open('../data/testcsv.csv') as f:
    with open('../data/bodymass.csv', 'w') as g:
        csvread = csv.reader(f)
        csvwrite = csv.writer(g)
        for row in csvread:
            print(row)
            csvwrite.writerow([row[0], row[4]])

