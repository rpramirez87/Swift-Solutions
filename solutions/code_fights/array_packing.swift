func arrayPacking(a: [Int]) -> Int {
    var res = 0, i = 0, shift = 0
    while i < a.count {
        res += (a[i] << shift)
        shift += 8
        i += 1
    }
    return res
}
