func phoneCall(min1: Int, min2_10: Int, min11: Int, S: Int) -> Int {
    var minute = 0
    var money = S
    while money > 0 {
        let now = minute + 1
        var cost: Int
        switch now {
        case 1:
            cost = min1
        case 2...10:
            cost = min2_10
        default:
            cost = min11
        }
        if money >= cost {
            money -= cost
            minute += 1
        } else {
            break
        }
    }
    return minute
}
