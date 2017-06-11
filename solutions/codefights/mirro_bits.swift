func mirrorBits(a: Int) -> Int {
    var res = 0, a = a
    while a > 0 {
        res = res * 2 + (a % 2)
        a /= 2
    }
    return res
}
