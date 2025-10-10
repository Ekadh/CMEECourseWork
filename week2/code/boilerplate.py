#!/usr/bin/env python3

__appname__ = '[boilerplate]'
__author__ = 'Ekadh (er925@ic.ac.uk)'
__version__ = '0.0.1'
__license__ = "License for this code/program"

""" This is the help page for this script
No one can help, it's just one line of code """

import sys ## connects program to the operating system

def main(argv):
    """ This function just prints a line """
    print('This is a boilerplate')
    return 0

if __name__ == "__main__":
    status = main(sys.argv) ## makes sure that the def(main) function is called from command line
    sys.exit("I am exiting now")