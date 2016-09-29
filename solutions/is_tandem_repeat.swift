func isTandemRepeat(inputString: String) -> Bool {
    let chars = inputString.characters.map({String($0)})
    if chars.count % 2 != 0 {
        return false
    }
    let half = chars.count / 2
    for i in 0..<half {
        if chars[i] != chars[i + half] {
            return false
        }
    }
    return true
}
