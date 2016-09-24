func largestNumber(n: Int) -> Int {
    var number = 0
    for i in 0..<n {
        number += 9 * Int(pow(10, Double(i)))
    }
    return number
}
