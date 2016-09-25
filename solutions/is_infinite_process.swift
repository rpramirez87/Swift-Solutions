func isInfiniteProcess(a: Int, b: Int) -> Bool {
    return a > b || (b - a) % 2 != 0
}
