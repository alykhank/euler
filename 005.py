"""Find the smallest possible number that is the LCM of 1-20."""

LCM_1_TO_10 = 2520

def divisible_by_one_to_twenty(n):
    """Determine if n is divisible by integers in range 1-20."""
    for i in xrange(20, 10, -1):
        if n % i != 0:
            return False
    if n % LCM_1_TO_10 != 0:
        return False
    return True

num = LCM_1_TO_10 * 2
while True:
    if divisible_by_one_to_twenty(num):
        print num
        break
    else:
        num += LCM_1_TO_10
