func isSumOfConsecutive2(n: Int) -> Int {
    var count = 0
    for i in 1..<n {
        var total = 0
        for j in i..<n {
            if total >= n {
                break
            }
            total += j
        }
        if total == n {
            count += 1
        }
    }
    return count
}
