func volleyballPositions(formation: [[String]], k: Int) -> [[String]] {
    var rotates: [(x1: Int, y1: Int, x2: Int, y2: Int)] = [(3, 2, 1, 2), (1, 2, 0, 1), (0, 1, 1, 0), (1, 0, 3, 0), (3, 0, 2, 1), (2, 1, 3, 2)]
    var pre = formation, result = formation, k = k % 6
    if k < 1 {
        return formation
    }
    for i in 1...k {
        for rotate in rotates {
            let x1 = rotate.x1, y1 = rotate.y1, x2 = rotate.x2, y2 = rotate.y2
            result[x2][y2] = pre[x1][y1]
        }
        pre = result
    }
    return result
}
