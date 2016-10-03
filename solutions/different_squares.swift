func differentSquares(matrix: [[Int]]) -> Int {
    var result: Set<String> = []
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count {
            if i + 1 < matrix.count && j + 1 < matrix[i].count {
                var row = "\(matrix[i][j])-\(matrix[i][j + 1])-\(matrix[i + 1][j])-\(matrix[i + 1][j + 1])"
                result.insert(row)
            }
        }
    }
    return result.count
}
