func cyclicString(s: String) -> Int {
    let chars = s.characters.map({String($0)})
    for i in 1...chars.count {
        let part = chars[0..<i]
        var isRoot = true
        for j in 0..<chars.count {
            if chars[j] != part[j % part.count] {
                isRoot = false
                break
            }
        }
        if isRoot {
            return i
        }
    }
    return 0
}
