#!/usr/bin/xcrun swift

import Foundation

// Find the largest prime factor of the number 600851475143.

let number = 600_851_475_143
let sqrtOfNumber = Int(sqrt(Double(number)))

func isPrime(n: Int) -> Bool {
    // Determine if n is prime.
    assert(n >= 1, "N cannot be less than one")
    if n == 1 {
        return false
    } else if n == 2 || n == 3 {
        return true
    }
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

for var i = sqrtOfNumber; i > 1; --i {
    if number % i == 0 && isPrime(i) {
        println(i)
        break
    }
}
