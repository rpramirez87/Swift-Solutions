func alphanumericLess(s1: String, s2: String) -> Bool {
    var items1 = split(s1), items2 = split(s2)
    for i in 0..<items1.count {
        let item1 = items1[i]
        if i >= items2.count {
            return false
        }
        let item2 = items2[i]
        if let num1 = Int(item1) {
            if let num2 = Int(item2) {
                if num1 != num2 {
                    return num1 < num2
                } else {
                    // if item1 != item2 {
                    //     return item1.characters.count > item2.characters.count
                    // }
                }
            } else {
                return true
            }
        } else {
            if item1 != item2 {
                return item1 < item2
            }
        }
    }
    if items1.count != items2.count {
        return items1.count < items2.count
    }
    return s1.characters.count > s2.characters.count
}

func split(s: String) -> [String] {
    var chars = (s + " ").characters.map({String($0)}), item = "", result: [String] = []
    for char in chars {
        if "0" <= char && char <= "9" {
            item += char
        } else {
            if item.characters.count > 0 {
                result.append(item)
            }
            if char != " " {
                result.append(char)
            }
            item = ""
        }
    }
    return result
}
