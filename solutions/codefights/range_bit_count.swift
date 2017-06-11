func rangeBitCount(a: Int, b: Int) -> Int {
    var res = 0
    for i in a...b {
        var num = i
        while num > 0 {
            res += num % 2
            num /= 2
        }
    }
    return res
}
