func arrayConversion(inputArray: [Int]) -> Int {
    var result: [Int] = [], pre = inputArray, add = true
    while pre.count > 1 {
        result = []
        if add {
            for i in 0..<(pre.count / 2) {
                result.append(pre[2 * i] + pre[2 * i + 1])
            }
        } else {
            for i in 0..<(pre.count / 2) {
                result.append(pre[2 * i] * pre[2 * i + 1])
            }
        }
        if pre.count % 2 != 0 {
            result.append(pre[pre.count - 1])
        }
        add = !add
        pre = result
    }
    return pre[0]
}
