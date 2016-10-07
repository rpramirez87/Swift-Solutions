func extractMatrixColumn(matrix: [[Int]], column: Int) -> [Int] {
    var result: [Int] = []
    for i in 0..<matrix.count {
        result.append(matrix[i][column])
    }
    return result
}
