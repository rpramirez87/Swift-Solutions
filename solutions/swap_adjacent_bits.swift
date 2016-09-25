func swapAdjacentBits(n: Int) -> Int {
    return { (n: Int) -> Int in
        var n = n, res = 0, base = 1
        while n > 0 {
            var a = n % 2
            n /= 2
            var b = n % 2
            n /= 2
            res += (a * 2 + b) * base
            base *= 4
        }
        return res
        }(n) ;
}
