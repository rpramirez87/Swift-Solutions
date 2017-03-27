func stringsCrossover(inputArray: [String], result: String) -> Int {
    var count = 0
    let chars = result.characters.map({String($0)})
    for i in 0..<inputArray.count {
        for j in (i + 1)..<inputArray.count {
            let chars1 = inputArray[i].characters.map({String($0)})
            let chars2 = inputArray[j].characters.map({String($0)})
            var isCross = true
            for k in 0..<chars.count {
                if chars[k] != chars1[k] && chars[k] != chars2[k] {
                    isCross = false
                    break
                }
            }
            if isCross {
                count += 1
            }
        }
    }
    return count
}
