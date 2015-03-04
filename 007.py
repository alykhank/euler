"""Find the 10,001st prime number."""

import math

PRIME_TO_FIND = 10001

def is_prime(n):
    """Check if n is a prime number."""
    for i in xrange(2, int(math.sqrt(n) + 1)):
        if n % i == 0:
            return False
    return True

i = PRIME_TO_FIND
j = 2
while i > 0:
    if is_prime(j):
        i -= 1
        if i == 0:
            print j
            break
    j += 1
