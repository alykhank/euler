def fibonacci(n):
	if n == 0:
		return 1
	elif n == 1:
		return 2
	else:
		return fibonacci(n-2) + fibonacci(n-1)

sum = 0
for i in range(32):
	f = fibonacci(i)
	if f % 2 == 0:
		sum += f
print sum
