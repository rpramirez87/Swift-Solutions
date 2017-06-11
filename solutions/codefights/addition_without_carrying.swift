func additionWithoutCarrying(param1: Int, param2: Int) -> Int {
    var a = param1, b = param2, base = 1, total = 0
    while a > 0 || b > 0 {
        total += ((a % 10 + b % 10) % 10) * base
        base *= 10
        a /= 10
        b /= 10
    }
    return total
}
