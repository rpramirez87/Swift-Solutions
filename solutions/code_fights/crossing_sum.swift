func crossingSum(matrix: [[Int]], a: Int, b: Int) -> Int {
    var result = 0
    for i in 0..<matrix.count {
        result += matrix[i][b]
    }
    for j in 0..<matrix[a].count {
        if j != b {
            result += matrix[a][j]
        }
    }
    return result
}
