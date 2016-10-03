func adaNumber(line: String) -> Bool {
    var chars = line.lowercaseString.characters.map({String($0)})
    for base in 2...16 {
        if parseNum(base, chars, line) {
            return true
        }
    }
    for char in chars {
        if char == "_" || ("0" <= char && char <= "9") {
            continue
        }
        return false
    }
    return true
}

func parseNum(base: Int, _ chars: [String], _ line: String) -> Bool {
    var head = String(base) + "#"
    var end = "#"
    var largest = ""
    switch base {
    case 2, 3, 4, 5, 6, 7, 8, 9, 10:
        largest = String(base - 1)
    case 11:
        largest = "a"
    case 12:
        largest = "b"
    case 13:
        largest = "c"
    case 14:
        largest = "d"
    case 15:
        largest = "e"
    case 16:
        largest = "f"
    default:
        largest = ""
    }
    if !line.hasPrefix(head) || !line.hasSuffix(end) {
        return false
    }
    if chars.count <= head.characters.count + 1 {
        return false
    }
    for char in chars[head.characters.count..<(chars.count - 1)] {
        if "_" == char {
            continue
        }
        if base <= 10 {
            if "0" <= char && char <= largest {
                continue
            }
        } else {
            if "0" <= char && char <= "9" {
                continue
            }
            if "a" <= char && char <= largest {
                continue
            }
        }
        return false
    }
    return true
}
