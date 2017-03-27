func reflectString(inputString: String) -> String {
    var result = ""
    var chars = "abcdefghijklmnopqrstuvwxyz".characters.map({String($0)})
    var mapping: [String: String] = [:]
    for i in 0..<chars.count {
        mapping[chars[i]] = chars[chars.count - 1 - i]
    }
    for char in inputString.characters.map({String($0)}) {
        result += mapping[char]!
    }
    return result
}
