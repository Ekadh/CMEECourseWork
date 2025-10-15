#!/usr/bin/env python3
""" Aligns sequences in .fasta format """
__author__ = 'Ekadh (er925@ic.ac.uk)'
__version__ = '0.0.1'

import sys
import csv

seqs = []
current_seq = ""

with open('../data/testfasta.csv', 'r') as f:
    for line in f:
        line = line.strip()
        if line.startswith(">"):
            if current_seq:
                seqs.append(current_seq)
                current_seq = ""
            continue
        current_seq = current_seq + line

# A function that computes a score by returning the number of matches starting
# from arbitrary startpoint (chosen by user)
def calculate_score(s1, s2, l1, l2, startpoint):
    """ Starts from a startpoint and calculates matches """
    matched = "" # to hold string displaying alignements
    score = 0
    for i in range(l2):
        if (i + startpoint) < l1:
            if s1[i + startpoint] == s2[i]: # if the bases match
                matched = matched + "*"
                score = score + 1
            else:
                matched = matched + "-"
    print("." * startpoint + matched)           
    print("." * startpoint + s2)
    print(s1)
    print(score) 
    print(" ")
    return score

#import ipdb; ipdb.set_trace()

# Test the function with some example starting points:
# calculate_score(s1, s2, l1, l2, 0)
# calculate_score(s1, s2, l1, l2, 1)
# calculate_score(s1, s2, l1, l2, 5)

#import ipdb; ipdb.set_trace()

def main(argv):
    seq2 = "ATCGCCGGATTACGGG"
    seq1 = "CAATTCGGAT"
    l1 = len(seq1)
    l2 = len(seq2)
    if l1 >= l2:
        s1 = seq1
        s2 = seq2
    else:
        s1 = seq2
        s2 = seq1
        l1, l2 = l2, l1 # swap the two lengths
    
    print(calculate_score(s1, s2, l1, l2, 0))

    my_best_align = None
    my_best_score = -1

    for i in range(l1): # Note that you just take the last alignment with the highest score
        z = calculate_score(s1, s2, l1, l2, i)
        if z > my_best_score:
            my_best_align = "." * i + s2 # think about what this is doing!
            my_best_score = z 
    print(my_best_align)
    print(s1)
    print("Best score:", my_best_score)
    return 0

if __name__ == "__main__":
    status = main(sys.argv) ## makes sure that the def(main) function is called from command line
    sys.exit(status)
