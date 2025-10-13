#!/usr/bin/env python3
""" Controlling flows in programs """
__author__ = 'Ekadh (er925@ic.ac.uk)'
__version__ = '0.0.1'

import sys ## connects program to the operating system
import doctest

def even_or_odd(x=0):
    """Find whether a number x is even or odd
    >>> even_or_odd(10)
    '10 is even!'

    >>> even_or_odd(5)
    '5 is odd!'

    in case of negative numbers, the positive is taken:
    >>> even_or_odd(-2)
    '-2 is even!'

    """

    if x % 2 == 0:
        return f"{x} is even!"
    return f"{x} is odd!"

def main(argv):
    print(even_or_odd(22))
    print(even_or_odd(33))
    return 0

if (__name__ == "__main__"):
    status = main(sys.argv) ## makes sure that the def(main) function is called from command line
    sys.exit(status) ## no need for doctest.testmod() if you run python3 -m doctest -v test_control_flow.py in terminal
    