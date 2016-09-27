func appleBoxes(k: Int) -> Int {
    var red = 0, yellow = 0
    for i in 1...k {
        if i % 2 == 0 {
            red += i * i
        } else {
            yellow += i * i
        }
    }
    return red - yellow
}
