func equalPairOfBits(n: Int, m : Int) -> Int {
    return { (n: Int, m: Int) -> Int in
        var n = n, m = m, base = 1
        while n > 0 || m > 0 {
            if n % 2 == m % 2 {
                break
            }
            n /= 2
            m /= 2
            base *= 2
        }
        return base
        }(n, m)
}
