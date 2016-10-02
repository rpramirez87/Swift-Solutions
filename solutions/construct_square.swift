func constructSquare(s: String) -> Int {
    let chars = s.characters.map({String($0)}), n = chars.count
    var start = Int(sqrt(pow(10.0, Double(n - 1))))
    var end = Int(sqrt(pow(10.0, Double(n))))
    if start * start < Int(pow(10.0, Double(n - 1))) {
        start += 1
    }
    if end * end > Int(pow(10.0, Double(n))) {
        end -= 1
    }
    let counter1 = count(chars)
    for i in start...end {
        var num = (end - (i - start))
        num = num * num
        let counter2 = count(String(num).characters.map({String($0)}))
        if compare(counter1, b: counter2) {
            return num
        }
    }
    return -1
}

func count(chars: [String]) -> [Int] {
    var counter: [String: Int] = [:]
    for char in chars {
        if counter[char] != nil {
            counter[char] = 1 + counter[char]!
        } else {
            counter[char] = 1
        }
    }
    let result = [Int](counter.values).sort()
    return result
}

func compare(a: [Int], b: [Int]) -> Bool {
    if a.count != b.count {
        return false
    }
    for i in 0..<a.count {
        if a[i] != b[i] {
            return false
        }
    }
    return true
}
