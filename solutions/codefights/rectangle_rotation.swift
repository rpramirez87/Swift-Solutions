func rectangleRotation(a: Int, b: Int) -> Int {
    var points: [[Int]] = []
    let unit = 1.414 / 2.0
    let left = -Double(a) / 2.0
    let right = Double(a) / 2.0
    let down = -Double(b) / 2.0
    let up = Double(b) / 2.0
    func flood(x: Int, _ y: Int) {
        if points.contains({$0[0] == x && $0[1] == y}) {
            return
        }
        if isContained(x, y) {
            points.append([x, y])
        } else {
            return
        }
        flood(x - 1, y - 1)
        flood(x - 1, y + 1)
        flood(x + 1, y - 1)
        flood(x + 1, y + 1)
    }
    func isContained(x: Int, _ y: Int) -> Bool{
        let realX = Double(x) * unit
        let realY = Double(y) * unit
        return left <= realX && realX <= right && down <= realY && realY <= up
    }
    flood(0, 0)
    return points.count
}
