func magicalWell(a: Int, b: Int, n: Int) -> Int {
    var total = 0, a = a, b = b
    if n == 0 {
        return 0
    }
    for i in 1...n {
        total += a * b
        a += 1
        b += 1
    }
    return total
}
