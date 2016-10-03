func houseOfCats(legs: Int) -> [Int] {
    var result: [Int] = [], num = 0
    while 2 * num <= legs {
        if (legs - 2 * num) % 4 == 0 {
            result.append(num)
        }
        num += 1
    }
    return result
}
