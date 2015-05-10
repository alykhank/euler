#!/usr/bin/xcrun swift

// Find the sum of all the primes below two million.

import Foundation

let twoMillion = 2_000_000

func isPrime(n: Int) -> Bool {
    // Check if n is a prime number.
    if n == 2 || n == 3 { return true }
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

let primes = Array(filter(2...twoMillion) { isPrime($0) })
println(reduce(primes, 0) { $0 + $1 })
