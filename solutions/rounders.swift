func rounders(value: Int) -> Int {
    var base = 1, value = value
    while value > 0 {
        if value < 10 {
            break
        }
        if value % 10 < 5 {
            value = value / 10
        } else {
            value = value / 10 + 1
        }
        base *= 10
    }
    return value * base
}
