#!/usr/bin/xcrun swift

import Foundation

// Find the product abc where a, b, c are a Pythagorean triplet for which a + b + c = 1000.

let tripletSum = 1000

func isPythagoreanTriplet(a: Int, b: Int, c: Int) -> Bool {
    // Determine if a, b, c are a Pythagorean triplet.
    return (pow(Double(a), 2.0) + pow(Double(b), 2.0)) == pow(Double(c), 2.0)
}

func findABC() -> (Int, Int, Int)? {
    for a in 1...332 {
        for b in 2...499 {
            if a < b {
                let c = tripletSum - a - b
                if b < c {
                    if isPythagoreanTriplet(a, b, c) {
                        return (a, b, c)
                    }
                }
            }
        }
    }
    return nil
}

if let (a, b, c) = findABC() {
    println(a * b * c)
}
