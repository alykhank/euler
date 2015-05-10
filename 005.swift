#!/usr/bin/xcrun swift

// Find the smallest possible number that is the LCM of 1-20.

let lcm1To10 = 2_520

func divisibleByOneToTwenty(n: Int) -> Bool {
    // Determine if n is divisible by integers in range 1-20.
    for var i = 20; i >= 10; --i {
        if n % i != 0 {
            return false
        }
    }
    if n % lcm1To10 != 0 {
        return false
    }
    return true
}

var num = lcm1To10 * 2
while true {
    if divisibleByOneToTwenty(num) {
        println(num)
        break
    } else {
        num += lcm1To10
    }
}
