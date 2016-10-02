func stringsConstruction(A: String, B: String) -> Int {
    var chars1 = A.characters.map({String($0)})
    var chars2 = B.characters.map({String($0)})
    var counter1: [String: Int] = [:]
    var counter2: [String: Int] = [:]
    for char in chars1 {
        if counter1[char] != nil {
            counter1[char] = 1 + counter1[char]!
        } else {
            counter1[char] = 1
        }
    }
    for char in chars2 {
        if counter2[char] != nil {
            counter2[char] = 1 + counter2[char]!
        } else {
            counter2[char] = 1
        }
    }
    var result = 100
    for (char, count) in counter1 {
        if counter2[char] == nil {
            result = 0
            break
        }
        var num = counter2[char]! / count
        if num < result {
            result = num
        }
    }
    return result
}
