func allLongestStrings(inputArray: [String]) -> [String] {
    var result: [String] = [], maxCount = 0
    for item in inputArray {
        let count = item.characters.count
        if count > maxCount {
            maxCount = count
            result = [item]
        } else if count == maxCount {
            result.append(item)
        }
    }
    return result
}
