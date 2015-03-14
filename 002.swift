#!/usr/bin/xcrun swift

// Find the sum of the even-valued terms in the Fibonacci sequence (<4M).

var sum = 0
var a = 1
var b = 1
while a + b < 4_000_000 {
    if (a + b) % 2 == 0 {
        sum += a + b
    }
    var temp = a + b
    a = b
    b = temp
}
println(sum)
