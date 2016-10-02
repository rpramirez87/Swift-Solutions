func numbersGrouping(a: [Int]) -> Int {
    let base = 10 * 10 * 10 * 10
    func group(num: Int) -> Int {
        return (num - 1) / base
    }
    var result: Set<Int> = []
    for num in a {
        result.insert(group(num))
    }
    return result.count + a.count
}
