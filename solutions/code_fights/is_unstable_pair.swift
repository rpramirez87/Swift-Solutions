func isUnstablePair(filename1: String, filename2: String) -> Bool {
    let f1 = filename1
    let f2 = filename2
    let f1Up = filename1.uppercaseString
    let f2Up = filename2.uppercaseString
    let f1Low = filename1.lowercaseString
    let f2Low = filename2.lowercaseString
    if isSmaller(f1, f2) {
        if isSmaller(f2Low, f1Low) || f2Low == f1Low {
            return true
        }
        if isSmaller(f2Up, f1Up) || f2Up == f1Up {
            return true
        }
    }
    if isSmaller(f2, f1) {
        if isSmaller(f1Low, f2Low) || f1Low == f2Low {
            return true
        }
        if isSmaller(f1Up, f2Up) || f1Up == f2Up {
            return true
        }
    }
    return false
}

func isSmaller(a: String, _ b: String) -> Bool {
    var chars1 = a.characters.map({String($0)})
    var chars2 = b.characters.map({String($0)})
    let maxChars = min(chars1.count, chars2.count)
    for i in 0..<maxChars {
        let isSmall1 = chars1[i] == chars1[i].lowercaseString
        let isSmall2 = chars2[i] == chars2[i].lowercaseString
        if (isSmall1 && isSmall2) || (!isSmall1 && !isSmall2) {
            if chars1[i] < chars2[i] {
                return true
            } else if chars1[i] > chars2[i] {
                return false
            }
        } else {
            if isSmall2 {
                return true
            } else {
                return false
            }
        }
    }
    return chars1.count < chars2.count
}
