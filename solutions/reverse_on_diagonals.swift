func reverseOnDiagonals(matrix: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    let n = matrix.count
    for i in 0..<n {
        var row: [Int] = []
        for j in 0..<n {
            var item: Int = matrix[i][j]
            if i == j || i + j + 1 == n {
                item = matrix[n - 1 - i][n - 1 - j]
            }
            row.append(item)
        }
        result.append(row)
    }
    return result
}
