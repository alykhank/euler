#!/usr/bin/xcrun swift

// Find the largest palindrome made from the product of two 3-digit numbers.

func isPalindrome(token: String) -> Bool {
    // Determine if token is a palindrome.
    let characters = Array(token)
    for (i, c) in enumerate(characters[0..<characters.count / 2]) {
        if c != characters[(characters.count - 1) - i] {
            return false
        }
    }
    return true
}

var max = 0
for var a = 999; a >= 100; --a {
    for var b = 999; b >= 100; --b {
        if (a * b > max) && isPalindrome(String(a * b)) {
            max = a * b
        }
    }
}
println(max)
