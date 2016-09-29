func weakNumbers(n: Int) -> [Int] {
    var factorCache: [Int] = [0]
    var weakCache: [Int] = [0]
    for i in 1...n {
        let factors = factorNumber(i)
        var hasMoreFactorsCount = 0
        for j in 1..<i {
            if factorCache[j] > factors {
                hasMoreFactorsCount += 1
            }
        }
        factorCache.append(factors)
        weakCache.append(hasMoreFactorsCount)
    }
    var weakest = 0, weakestCount = 0
    for i in 1...n {
        if weakCache[i] > weakest {
            weakest = weakCache[i]
            weakestCount = 1
        } else if weakCache[i] == weakest {
            weakestCount += 1
        }
    }
    return [weakest, weakestCount]
}

func factorNumber(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        if n % i == 0 {
            count += 1
        }
    }
    return count
}
