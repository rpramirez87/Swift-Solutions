func candles(candles: Int, makeNew: Int) -> Int {
    var candles = candles, leftover = 0, total = 0
    while candles > 0 {
        total += candles
        leftover += candles
        candles = leftover / makeNew
        leftover = leftover % makeNew
    }
    return total
}
