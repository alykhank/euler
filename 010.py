#!/usr/bin/env python

"""Find the sum of all the primes below two million."""

import math

TWO_MILLION = 2000000

def is_prime(n):
    """Check if n is a prime number."""
    for i in xrange(2, int(math.sqrt(n) + 1)):
        if n % i == 0:
            return False
    return True

primes = [n for n in xrange(2, TWO_MILLION + 1) if is_prime(n)]
print sum(primes)
