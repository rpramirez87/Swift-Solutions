func drawRectangle(canvas: [[Character]], rectangle: [Int]) -> [[Character]] {
    var canvas = canvas
    let y1 = rectangle[0], x1 = rectangle[1], y2 = rectangle[2], x2 = rectangle[3]
    for i in x1...x2 {
        canvas[i][y1] = "|"
        canvas[i][y2] = "|"
    }
    for j in y1...y2 {
        canvas[x1][j] = "-"
        canvas[x2][j] = "-"
    }
    canvas[x1][y1] = "*"
    canvas[x1][y2] = "*"
    canvas[x2][y2] = "*"
    canvas[x2][y1] = "*"
    return canvas
}
