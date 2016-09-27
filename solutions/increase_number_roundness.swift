func increaseNumberRoundness(n: Int) -> Bool {
    var hasSeenNonZero = false, canIncreaseRoundness = false, n = n
    while n > 0 {
        if hasSeenNonZero {
            if n % 10 == 0 {
                canIncreaseRoundness = true
                break
            }
        } else {
            if n % 10 != 0 {
                hasSeenNonZero = true
            }
        }
        n /= 10
    }
    return canIncreaseRoundness
}
