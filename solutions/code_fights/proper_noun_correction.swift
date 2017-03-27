func properNounCorrection(noun: String) -> String {
    var result = "", isFirst = true
    for char in noun.characters.map({String($0)}) {
        var char = char
        if isFirst {
            char = char.uppercaseString
            isFirst = false
        } else {
            char = char.lowercaseString
        }
        result += char
    }
    return result
}
