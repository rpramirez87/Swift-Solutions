func isPower(n: Int) -> Bool {
    if n == 1 {
        return true
    }
    var factors: [Int: Int] = [:], factor = 2, num = n
    while num > 1 {
        if num % factor == 0 {
            if let count = factors[factor] {
                factors[factor] = count + 1
            } else {
                factors[factor] = 1
            }
            num /= factor
        } else {
            factor += 1
        }
    }
    var common = 0
    for (factor, power) in factors {
        if common == 0 {
            common = power
        } else {
            common = gcd(common, power)
        }
    }
    return common > 1
}

func gcd(a: Int, _ b: Int) -> Int {
    let max = a > b ? a : b
    let min = a < b ? a : b
    if max % min == 0 {
        return min
    }
    return gcd(min, max % min)
}
