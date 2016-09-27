func concatenateArrays(a: [Int], b: [Int]) -> [Int] {
    var c: [Int] = []
    for item in a {
        c.append(item)
    }
    for item in b {
        c.append(item)
    }
    return c
}
