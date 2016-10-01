func findEmailDomain(address: String) -> String {
    var chars = address.characters.map({String($0)})
    var result = "", i = chars.count - 1
    while i > 0 {
        var char = chars[i]
        if char == "@" {
            break
        }
        result = char + result
        i -= 1
    }
    return result
}
