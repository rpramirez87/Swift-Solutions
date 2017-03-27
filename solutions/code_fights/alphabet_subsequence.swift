func alphabetSubsequence(s: String) -> Bool {
    let chars = s.characters.map({String($0)})
    var pre = chars[0]
    if pre < "a" || pre > "z" {
        return false
    }
    for char in chars[1..<chars.count] {
        if char < "a" || char > "z" {
            return false
        }
        if char <= pre {
            return false
        }
        pre = char
    }
    return true
}
