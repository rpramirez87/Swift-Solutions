func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
    var small, large: (value: Int, weight: Int)
    if value1 < value2 {
        small = (value1, weight1)
        large = (value2, weight2)
    } else {
        small = (value2, weight2)
        large = (value1, weight1)
    }
    if maxW >= small.weight + large.weight {
        return small.value + large.value
    }
    if maxW >= large.weight {
        return large.value
    }
    if maxW >= small.weight {
        return small.value
    }
    return 0
}
