func houseNumbersSum(inputArray: [Int]) -> Int {
    var result = 0
    for num in inputArray {
        if num == 0 {
            break
        }
        result += num
    }
    return result
}
