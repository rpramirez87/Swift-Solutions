func countSumOfTwoRepresentations2(n: Int, l: Int, r: Int) -> Int {
    if n < 2 * l || n > 2 * r {
        return 0
    }
    var end = n >= r ? r : n
    var start = n - end
    if start <= l {
        start = l
        end = n - start
    }
    return (end - start) / 2 + 1
}
