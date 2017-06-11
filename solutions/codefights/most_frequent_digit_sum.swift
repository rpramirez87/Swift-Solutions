func mostFrequentDigitSum(n: Int) -> Int {
    var m = n, counter: [Int: Int] = [:]
    while m > 0 {
        let reduce = s(m)
        if counter[reduce] != nil {
            counter[reduce] = 1 + counter[reduce]!
        } else {
            counter[reduce] = 1
        }
        m = m - reduce
    }
    var max = 0, maxCount = 0
    for (key, value) in counter {
        if value > maxCount {
            max = key
            maxCount = value
        } else if value == maxCount {
            if key > max {
                max = key
            }
        }
    }
    return max
}

func s(x: Int) -> Int {
    var y = x, result = 0
    while y > 0 {
        result += y % 10
        y /= 10
    }
    return result
}
