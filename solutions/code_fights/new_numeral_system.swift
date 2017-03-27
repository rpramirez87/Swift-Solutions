func newNumeralSystem(number: Character) -> [String] {
    var char = String(number), number = charToInt(char) - charToInt("A")
    var result: [String] = []
    for i in 0..<26 {
        var j = number - i
        if j < i {
            break
        }
        var char1 = intToChar(charToInt("A") + i)
        var char2 = intToChar(charToInt("A") + j)
        result.append("\(char1) + \(char2)")
    }
    return result
}

func charToInt(char: String) -> Int {
    return Int([UnicodeScalar](char.unicodeScalars)[0].value)
}

func intToChar(number: Int) -> String {
    return String(UnicodeScalar(number))
}
