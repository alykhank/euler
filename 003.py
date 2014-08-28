"""Find the largest prime factor of the number 600851475143"""
from math import floor, sqrt

NUM = 600851475143
INT_SQRT_NUM = int(floor(sqrt(NUM)))

def is_prime(n):
    """Determine if n is prime"""
    if n <= 3:
        if n <= 1:
            return False
        return True
    if n % 2 == 0 or n % 3 == 0:
        return False
    for j in xrange(5, int(floor(sqrt(n))) + 1, 6):
        if n % j == 0 or n % (j + 2) == 0:
            return False
    return True

for i in xrange(INT_SQRT_NUM, 1, -1):
    if NUM % i == 0 and is_prime(i):
        print i
        break
