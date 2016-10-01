func htmlEndTagByStartTag(startTag: String) -> String {
    var chars = startTag.characters.map({String($0)})
    var result = ""
    for i in 0..<chars.count {
        var char = chars[i]
        if i == 1 {
            result += "/"
        }
        if char == ">" {
            result += ">"
            break
        }
        if char == " " {
            result += ">"
            break
        }
        result += char
    }
    return result
}
