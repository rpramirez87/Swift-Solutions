func timedReading(maxLength: Int, text: String) -> Int {
    var chars = (text + " ").lowercaseString.characters.map({String($0)}), result = 0, word = ""
    for char in chars {
        if char < "a" || char > "z" {
            let count = word.characters.count
            if count > 0 && count <= maxLength {
                result += 1
            }
            word = ""
        } else {
            word += char
        }
    }
    return result
}
