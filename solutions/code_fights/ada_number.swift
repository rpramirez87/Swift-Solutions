func adaNumber(line: String) -> Bool {
    var chars = line.lowercaseString.characters.map({String($0)})
    if chars[0] == "-" {
        chars.removeAtIndex(0)
    }
    for base in 2...16 {
        if parseNumWithHead(base, chars) != nil {
            return true
        }
    }
    if parseNum(10, chars) != nil {
        return true
    }
    return false
}

func parseNumWithHead(base: Int, _ chars: [String]) -> Int? {
    var first = -1
    for i in 0..<chars.count {
        if chars[i] == "#" {
            first = i
            break
        }
    }
    if first == -1 || first == 0 || first == chars.count - 1 || first == chars.count - 2 {
        return nil
    }
    if chars[chars.count - 1] != "#" {
        return nil
    }
    var newChars: [String] = []
    for i in 0..<first {
        newChars.append(chars[i])
    }
    if base != parseNum(10, newChars) {
        return nil
    }
    newChars = []
    for i in (first + 1)..<(chars.count - 1) {
        newChars.append(chars[i])
    }
    return parseNum(base, newChars)
}

func parseNum(base: Int, _ chars: [String]) -> Int? {
    var end = baseToEnd(base), result = 0
    for i in 0..<chars.count {
        let char = chars[i]
        if char == "_" {
            if i == 0 {
                return nil
            }
            if i == chars.count - 1 {
                return nil
            }
            if (i + 1) < chars.count && chars[i + 1] == "_" {
                return nil
            }
            continue
        }
        if base <= 10 {
            if "0" <= char && char <= end {
                result = result &* base &+ stringToInt(char)!
                continue
            }
        } else {
            if "0" <= char && char <= "9" {
                result = result &* base &+ stringToInt(char)!
                continue
            }
            if "a" <= char && char <= end {
                result = result &* base &+ stringToInt(char)!
                continue
            }
        }
        return nil
    }
    return result
}

func stringToInt(string: String) -> Int? {
    if "0" <= string && string <= "9" {
        return Int(string)!
    } else {
        switch string {
        case "a":
            return 10
        case "b":
            return 11
        case "c":
            return 12
        case "d":
            return 13
        case "e":
            return 14
        case "f":
            return 15
        default:
            return nil
        }
    }
}

func baseToEnd(base: Int) -> String {
    var end = ""
    switch base {
    case 2, 3, 4, 5, 6, 7, 8, 9, 10:
        end = String(base - 1)
    case 11:
        end = "a"
    case 12:
        end = "b"
    case 13:
        end = "c"
    case 14:
        end = "d"
    case 15:
        end = "e"
    case 16:
        end = "f"
    default:
        end = ""
    }
    return end
}
