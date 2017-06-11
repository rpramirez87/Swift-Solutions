func isCaseInsensitivePalindrome(inputString: String) -> Bool {
    let chars = inputString.lowercaseString.characters.map({String($0)})
    for i in 0..<chars.count {
        if chars[i] != chars[chars.count - 1 - i] {
            return false
        }
    }
    return true
}
