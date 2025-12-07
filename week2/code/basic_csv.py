# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that reads and writes csv files

import csv

## Transfers each row of the csv file into a temp list and prints each line ##
with open('../data/testcsv.csv', 'r') as input:
    csvread = csv.reader(input)
    temp = []
    for row in csvread:
        temp.append(tuple(row))
        print(row)
        print("The species is ", row[0])

## Writes a csv file with species AND body mass 
with open('../data/testcsv.csv') as input:
    with open('../results/bodymass.csv', 'w') as output:
        csvread = csv.reader(input)
        csvwrite = csv.writer(output)
        for row in csvread:
            print(row)
            csvwrite.writerow([row[0], row[4]])

