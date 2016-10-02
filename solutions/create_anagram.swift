func createAnagram(s: String, t: String) -> Int {
    var chars1 = s.characters.map({String($0)})
    var chars2 = t.characters.map({String($0)})
    var counter1: [String: Int] = [:]
    var counter2: [String: Int] = [:]
    for char in chars1 {
        if counter1[char] != nil {
            counter1[char] = counter1[char]! + 1
        } else {
            counter1[char] = 1
        }
    }
    for char in chars2 {
        if counter2[char] != nil {
            counter2[char] = counter2[char]! + 1
        } else {
            counter2[char] = 1
        }
    }
    var result = 0
    for (char, count) in counter2 {
        var got = 0
        if counter1[char] != nil {
            got = counter1[char]!
        }
        if got < count {
            result += count - got
        }
    }
    return result
}
