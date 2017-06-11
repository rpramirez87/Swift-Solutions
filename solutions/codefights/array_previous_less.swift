func arrayPreviousLess(items: [Int]) -> [Int] {
    var result: [Int] = []
    for i in 0..<items.count {
        var j = i - 1, found = false
        while j >= 0 {
            if items[j] < items[i] {
                found = true
                result.append(items[j])
                break
            }
            j -= 1
        }
        if !found {
            result.append(-1)
        }
    }
    return result
}
