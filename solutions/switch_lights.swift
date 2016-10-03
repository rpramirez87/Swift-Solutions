func switchLights(a: [Int]) -> [Int] {
    var a = a
    for i in 0..<a.count {
        let item = a[i]
        if item == 1 {
            for j in 0...i {
                a[j] = 1 - a[j]
            }
        }
    }
    return a
}
