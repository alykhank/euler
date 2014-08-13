def is_palindrome(n):
	for i, c in enumerate(n[:len(n)/2]):
		if c != n[(len(n)-1) - i]:
			return False
	return True

max = 0
for a in range(999, 100, -1):
	for b in range(999, 100, -1):
		if (a * b > max) and is_palindrome(str(a * b)):
			max = a * b
print max