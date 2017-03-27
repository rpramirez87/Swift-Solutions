var sumCache: [Int: Int] = [:]

func sum(num: Int) -> Int {
    var num = num, total = 0
    while num > 0 {
        total += (num % 10)
        num /= 10
    }
    return total
}

func setupSumCache() {
    var toCache = 0
    for i in 1...1000 {
        if i % 10 != 0 {
            toCache += 1
        } else {
            toCache = sum(i)
        }
        sumCache[i] = toCache
    }
}

setupSumCache()

func comfortableNumbers(L: Int, R: Int) -> Int {
    var count = 0
    let getSum: (Int) -> Int = { (num) in
        var result: Int
        if sumCache.contains({(key, value) in key == num}) {
            result = sumCache[num]!
        } else {
            result = sum(num)
            sumCache[num] = result
        }
        return result
    }
    for a in L..<R {
        var sumA = getSum(a)
        for b in (a + 1)...(a + sumA) {
            if b > R {
                break
            }
            if a >= b - getSum(b) {
                count += 1
            } else {
                break
            }
        }
    }
    return count
}
