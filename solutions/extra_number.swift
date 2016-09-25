func extraNumber(a: Int, b: Int, c: Int) -> Int {
    if a == b {
        return c
    } else if b == c {
        return a
    } else {
        return b
    }
}
