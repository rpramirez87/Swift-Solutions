func makeArrayConsecutive2(sequence: [Int]) -> Int {
    var min = sequence[0], max = sequence[0]
    for item in sequence {
        if item < min {
            min = item
        } else if item > max {
            max = item
        }
    }
    return max - min + 1 - sequence.count
}
