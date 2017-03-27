func isSubstitutionCipher(string1: String, string2: String) -> Bool {
    var chars1 = string1.characters.map({String($0)})
    var chars2 = string2.characters.map({String($0)})
    var map: [String: String] = [:]
    for i in 0..<chars1.count {
        let char1 = chars1[i], char2 = chars2[i]
        if map[char1] != nil {
            if map[char1]! != char2 {
                return false
            }
        } else {
            for (from, to) in map {
                if to == char2 {
                    return false
                }
            }
            map[char1] = char2
        }
    }
    return true
}
