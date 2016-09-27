func firstReverseTry(arr: [Int]) -> [Int] {
    var arr = arr
    if arr.count >= 2 {
        var tmp = arr[0]
        arr[0] = arr[arr.count - 1]
        arr[arr.count - 1] = tmp
    }
    return arr
}
