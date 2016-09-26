func leastFactorial(n: Int) -> Int {
    var k = 1, m = 1
    while k < n {
        k *= m
        m += 1
    }
    return k
}
