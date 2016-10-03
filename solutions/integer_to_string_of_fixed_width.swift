func integerToStringOfFixedWidth(number: Int, width: Int) -> String {
    var chars = String(number).characters.map({String($0)})
    var result = "", pos = chars.count - 1
    for i in 1...width {
        if pos >= 0 {
            result = chars[pos] + result
            pos -= 1
        } else {
            result = "0" + result
        }
    }
    return result
}
