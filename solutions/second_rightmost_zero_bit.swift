func secondRightmostZeroBit(n: Int) -> Int {
    return { (n: Int) -> Int in
        var count = 0, n = n, i = 1
        while n > 0 {
            if n % 2 == 0 {
                count += 1
            }
            if count >= 2 {
                break
            }
            n /= 2
            i *= 2
        }
        return i
        }(n) ;
}
