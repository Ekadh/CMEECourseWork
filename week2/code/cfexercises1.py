#!/usr/bin/env python3
""" Controlling the flows in exercise 1 """
__author__ = 'Ekadh (er925@ic.ac.uk)'
__version__ = '0.0.1'

import sys

def foo_1(x=1):
    """ Raising a number to the power of 0.5 """
    return x ** 0.5


def foo_2(x=10,y=11):
    """Finds the larger number out of 2 inputs"""
    if x > y:
        return x
    return y


def foo_3(x=7,y=8,z=2):
    """Puts three input numbers into ascending order"""
    if x > y:
        x, y = y, x
    if x > z:
        x, z = z, x
    if y > z:
        y, z = z, y
    return [x, y, z]


def foo_4(x=6):
    """Factorial calculator using iteration. Returns x! for non-negative integers."""
    if x < 0:
        raise ValueError("Factorial is undefined for negative numbers")
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result


def foo_5(x=5):
    """Factorial calculator using recursion. Returns x! for non-negative integers."""
    if x < 0:
        raise ValueError("Factorial is undefined for negative numbers")
    if x == 0 or x == 1:
        return 1
    return x * foo_5(x - 1)


def foo_6(x=5):
    """Factorial calculator using a while loop"""
    if x < 0:
        raise ValueError("Factorial is undefined for negative numbers")
    facto = 1
    while x >= 1:
        facto = facto * x
        x = x-1
    return facto ## Much better factorial code


def main(argv):
    print(foo_1(12))
    print(foo_2(2, 6))
    print(foo_3(6, 1, 25))
    print(foo_4(3))
    print(foo_5(2))
    print(foo_6(5))
    return 0

if __name__ == "__main__":
    status = main(sys.argv)
    sys.exit(status)