#!/usr/bin/env python

"""Find the product abc where a, b, c are a Pythagorean triplet for which a + b + c = 1000."""

TRIPLET_SUM = 1000

def is_pythagorean_triplet(a, b, c):
    """Determine if a, b, c are a Pythagorean triplet."""
    return (a ** 2 + b ** 2) == (c ** 2)

def find_abc():
    for a in xrange(1, 332 + 1):
        for b in xrange(2, 499 + 1):
            if a < b:
                c = TRIPLET_SUM - a - b
                if b < c:
                    if is_pythagorean_triplet(a, b, c):
                        return (a, b, c)

a, b, c = find_abc()
print a * b * c
