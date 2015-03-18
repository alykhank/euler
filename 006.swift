#!/usr/bin/xcrun swift

import Foundation

// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

func sumOfSquares(n: Int) -> Int {
    // Calculate sum of squares of first n natural numbers.
    var sum = 0.0
    for i in 0...n {
        sum += pow(Double(i), 2)
    }
    return Int(sum)
}

func squareOfSum(n: Int) -> Int {
    // Calculate square of sum of first n natural numbers.
    var sum = 0.0
    for i in 0...n {
        sum += Double(i)
    }
    return Int(pow(sum, 2))
}

println(squareOfSum(100) - sumOfSquares(100))
