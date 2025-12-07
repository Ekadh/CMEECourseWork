# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that has a bug (now fixed) in the name of 'quercus'

import csv
from difflib import SequenceMatcher
import sys

#Checking if the name is an oak using similarity
def is_an_oak(name):
    """ Returns True if name is starts with 'quercus' """
    name_lower = name.lower()
    target = "quercus"
    similarity = SequenceMatcher(None, name_lower, target).ratio()
    return similarity >= 0.7

def main(argv): 
    input = open('../data/TestOaksData.csv','r')
    output = open('../results/JustOaksData.csv','w')
    taxa = csv.reader(input)
    csvwrite = csv.writer(output)
    oaks = set()
    #This code still keeps the header row, it is fixed in the groupwork assignment
    #For loop to go through each row in the csv file
    for row in taxa:
        print(row)
        print ("The genus is: ") 
        print(row[0] + '\n')
        if is_an_oak(row[0]):
            print('FOUND AN OAK!\n')
            csvwrite.writerow([row[0], row[1]])    

    return 0
    
if (__name__ == "__main__"):
    status = main(sys.argv)