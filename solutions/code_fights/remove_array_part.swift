func removeArrayPart(inputArray: [Int], l: Int, r: Int) -> [Int] {
    var result: [Int] = []
    for i in 0..<inputArray.count {
        if l <= i && i <= r {
            continue
        }
        result.append(inputArray[i])
    }
    return result
}
