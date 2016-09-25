func differentRightmostBit(n: Int, m : Int) -> Int {
    return { (n: Int, m: Int) -> Int in
        var base = 1, n = n, m = m
        while n > 0 || m > 0 {
            if n % 2 != m % 2 {
                break
            }
            n /= 2
            m /= 2
            base *= 2
        }
        return base
        }(n, m)
}
