func cipher26(message: String) -> String {
    var chars = message.characters.map({String($0)})
    var result = "", pre = 0
    for char in chars {
        var now = charToInt(char) - charToInt("a")
        var number = (now + 26 - pre) % 26
        result += intToChar(number + charToInt("a"))
        pre = now
    }
    return result
}

func charToInt(char: String) -> Int {
    return Int([UnicodeScalar](char.unicodeScalars)[0].value)
}

func intToChar(number: Int) -> String {
    return String(UnicodeScalar(number))
}
