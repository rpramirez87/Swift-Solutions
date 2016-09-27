func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    var result: [Int] = []
    for item in inputArray {
        if item == elemToReplace {
            result.append(substitutionElem)
        } else {
            result.append(item)
        }
    }
    return result
}
