#!/usr/bin/env python3
""" Controlling flows in programs """
__author__ = 'Ekadh (er925@ic.ac.uk)'
__version__ = '0.0.1'

import sys ## connects program to the operating system

def even_or_odd(x=0):
    """Find whether a number x is even or odd"""
    if x % 2 == 0:
        return f"{x} is even!"
    return f"{x} is odd!"

def largest_divisor_five(x=120): ## I tried out my own version
    """Find the larger divisor of x among 2,3,4,5"""
    if x % 5 == 0:
        return f"{x} has a largest divisor of 5"
    elif x % 4 == 0:
        return f"{x} has a largest divisor of 4"
    elif x % 3 == 0:
        return f"{x} has a largest divisor of 3"
    elif x % 2 == 0:
        return f"{x} has a largest divisor of 2"
    return f"{x} is not divisible by any of the divisors"

def is_prime(x=70):
    """Finding out whether an integer is a prime number"""
    for i in range(2, x):
        if x % i == 0:
            print(f"{x} is NOT a prime!")
            return False
    print(f"{x} is indeed a prime!")
    return True

def find_all_primes(x=22):
    """Finding all the prime numbers between 2 and the number"""
    all_primes = []
    for i in range(2, x + 1):
        if is_prime(i):
           all_primes.append(i)
    print(f"There are {len(all_primes)} primes between 2 and {x}")
    return all_primes


def main(argv):
    print(even_or_odd(22))
    print(even_or_odd(33))
    print(largest_divisor_five(120))
    print(largest_divisor_five(121))
    print(is_prime(60))
    print(is_prime(59))
    print(find_all_primes(100))
    return 0

if __name__ == "__main__":
    status = main(sys.argv) ## makes sure that the def(main) function is called from command line
    sys.exit(status)