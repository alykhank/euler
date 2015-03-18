#!/usr/bin/xcrun swift

import Foundation

// Find the 10,001st prime number.

let primeToFind = 10_001

func isPrime(n: Int) -> Bool {
    // Check if n is a prime number.
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

var i = primeToFind
var j = 2
while i > 0 {
    if isPrime(j) {
        --i
        if i == 0 {
            println(j)
            break
        }
    }
    ++j
}
