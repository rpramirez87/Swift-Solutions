func gcd(_ n: Int, _ m: Int) -> Int {
    if n % m == 0 {
        return m
    }
    return gcd(m, n % m)
}

func countBlackCells(n: Int, m: Int) -> Int {
    if n == 0 || m == 0 {
        return 0
    }
    if n == m {
        if n == 1 {
            return 1
        } else if n == 2 {
            return 4
        } else {
            return (n - 2) * 3 + 4
        }
    }
    var smaller = n > m ? m : n
    var bigger = n > m ? n : m
    var g = gcd(bigger, smaller)
    smaller /= g
    bigger /= g
    var unit = 0, start = 0, end = 0, ratio = Double(bigger) / Double(smaller)
    for i in 1...smaller {
        end = Int(Double(i) * ratio)
        unit += end - start + (i == smaller ? 0 : 1)
        start = end
    }
    return g * unit + 2 * (g - 1)
}
