func tennisSet(score1: Int, score2: Int) -> Bool {
    var small, large: Int
    if score1 < score2 {
        small = score1
        large = score2
    } else {
        small = score2
        large = score1
    }
    return small != large && ((small < 5 && large == 6) || (small >= 5 && large == 7))
}
