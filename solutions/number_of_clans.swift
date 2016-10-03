func numberOfClans(divisors: [Int], k: Int) -> Int {
    var clans: [Int] = [1]
    for num in 2...k {
        var shouldAdd = true
        for clan in clans {
            if inSameClan(clan, num, divisors) {
                shouldAdd = false
                break
            }
        }
        if shouldAdd {
            clans.append(num)
        }
    }
    return clans.count
}

func inSameClan(a: Int, _ b: Int, _ divisors: [Int]) -> Bool {
    for d in divisors {
        if a % d != 0 && b % d == 0 {
            return false
        }
        if a % d == 0 && b % d != 0 {
            return false
        }
    }
    return true
}
