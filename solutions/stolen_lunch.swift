func stolenLunch(note: String) -> String {
    let chars = note.characters.map({String($0)})
    var result = ""
    for char in chars {
        if "0" <= char && char <= "9" {
            result += String(UnicodeScalar(Int(char)! + Int([UnicodeScalar]("a".unicodeScalars)[0].value)))
        } else if "a" <= char && char <= "j" {
            result += String([UnicodeScalar](char.unicodeScalars)[0].value - [UnicodeScalar]("a".unicodeScalars)[0].value)
        } else {
            result += char
        }
    }
    return result
}
