func killKthBit(n: Int, k: Int) -> Int {
    return n & ~(1 << (k - 1))
}
