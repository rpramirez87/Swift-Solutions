func characterParity(symbol: Character) -> String {
    let symbol = String(symbol)
    if "0" <= symbol && symbol <= "9" {
        let num = Int(symbol)!
        if num % 2 == 0 {
            return "even"
        } else {
            return "odd"
        }
    } else {
        return "not a digit"
    }
}
