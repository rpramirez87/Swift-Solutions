func isSmooth(arr: [Int]) -> Bool {
    var middle = 0, n = arr.count
    if n % 2 == 0 {
        middle = arr[n / 2 - 1] + arr[n / 2]
    } else {
        middle = arr[n / 2]
    }
    return arr[0] == middle && middle == arr[arr.count - 1]
}
