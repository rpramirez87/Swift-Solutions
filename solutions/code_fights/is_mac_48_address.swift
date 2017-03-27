func isMAC48Address(inputString: String) -> Bool {
    var chars = inputString.characters.map({String($0)})
    if chars.count != 17 {
        return false
    }
    for i in 0..<chars.count {
        var char = chars[i]
        if (i + 1) % 3 == 0 {
            if char != "-" {
                return false
            }
        } else {
            if !("0" <= char && char <= "9") && !("A" <= char && char <= "F"){
                return false
            }
        }
    }
    return true
}
