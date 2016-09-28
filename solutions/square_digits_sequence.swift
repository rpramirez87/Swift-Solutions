func squareDigitsSequence(a0: Int) -> Int {
    var nums = [a0], now = a0
    repeat {
        nums.append(now)
        var pre = now
        now = 0
        while pre > 0 {
            now += (pre % 10) * (pre % 10)
            pre /= 10
        }
    } while !nums.contains(now)
    return nums.count
}
