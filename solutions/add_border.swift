func addBorder(picture: [String]) -> [String] {
    var line = ""
    for i in 1...(picture[0].characters.count + 2) {
        line += "*"
    }
    var result: [String] = [line]
    for item in picture {
        result.append("*" + item + "*")
    }
    result.append(line)
    return result
}
