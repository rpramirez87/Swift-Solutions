func replaceMiddle(arr: [Int]) -> [Int] {
    let n = arr.count
    if n % 2 != 0 {
        return arr
    }
    var result: [Int] = [], middle = arr[n / 2 - 1] + arr[n / 2]
    for i in 0..<n {
        if i == n / 2 - 1 {
            result.append(middle)
        } else if i == n / 2{
            continue
        } else {
            result.append(arr[i])
        }
    }
    return result
}
