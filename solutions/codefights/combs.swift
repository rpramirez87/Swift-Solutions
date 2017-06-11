func combs(comb1: String, comb2: String) -> Int {
    var n1 = comb1.characters.count, n2 = comb2.characters.count, result = n1 + n2
    let m1 = mask(comb1), m2 = mask(comb2)
    for i in 0...n1 {
        if (m2 << i) & m1 == 0 {
            var tmp = max(n2 + i, n1)
            if tmp < result {
                result = tmp
            }
        }
    }
    for i in 0...n2 {
        if (m1 << i) & m2 == 0 {
            var tmp = max(n1 + i, n2)
            if tmp < result {
                result = tmp
            }
        }
    }
    return result
}

func mask(comb: String) -> Int {
    var result = 0
    for char in comb.characters.map({String($0)}) {
        var digit = 0
        if char == "*" {
            digit = 1
        }
        result = result << 1 + digit
    }
    return result
}
