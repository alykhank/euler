"""Find the sum of the even-valued terms in the Fibonacci sequence (<4M)"""
sum = 0
a = 1
b = 1
while a + b < 4000000:
    if (a + b) % 2 == 0:
        sum += a + b
    temp = a + b
    a = b
    b = temp
print sum
