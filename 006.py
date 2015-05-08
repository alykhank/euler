#!/usr/bin/env python

"""Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum."""

def sum_of_squares(n):
    """Calculate sum of squares of first n natural numbers."""
    sum = 0
    for i in xrange(n + 1):
        sum += i ** 2
    return sum

def square_of_sum(n):
    """Calculate square of sum of first n natural numbers."""
    sum = 0
    for i in xrange(n + 1):
        sum += i
    return sum ** 2

print square_of_sum(100) - sum_of_squares(100)
