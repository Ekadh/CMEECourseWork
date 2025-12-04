#!/usr/bin/env python3
# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that demonstrates the use of __name__ in python programs

if __name__ == '__main__':
    print('This program is run autonomously')
else:
    print('I am being imported from another script/program/module')

print("This module's name is: " + __name__)