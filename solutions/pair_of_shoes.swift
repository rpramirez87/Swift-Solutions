func pairOfShoes(shoes: [[Int]]) -> Bool {
    var shoes1: [Int] = [], shoes2: [Int] = []
    for shoe in shoes {
        let type = shoe[0], size = shoe[1]
        if type == 0 {
            shoes1.append(size)
        } else {
            shoes2.append(size)
        }
    }
    shoes1.sortInPlace()
    shoes2.sortInPlace()
    if shoes1.count != shoes2.count {
        return false
    }
    for i in 0..<shoes1.count {
        if shoes1[i] != shoes2[i] {
            return false
        }
    }
    return true
}
