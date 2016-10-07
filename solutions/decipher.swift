func decipher(cipher: String) -> String {
    let a = Int([UnicodeScalar]("a".unicodeScalars)[0].value)
    let z = Int([UnicodeScalar]("z".unicodeScalars)[0].value)
    var num = 0, chars = cipher.characters.map({String($0)}), result = ""
    for char in chars {
        let digit = Int(char)!
        var newNum = 10 * num + digit
        if newNum > z {
            result += String(UnicodeScalar(num))
            num = digit
        } else {
            num = newNum
        }
    }
    result += String(UnicodeScalar(num))
    return result
}
