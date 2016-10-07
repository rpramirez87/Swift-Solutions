func areIsomorphic(array1: [[Int]], array2: [[Int]]) -> Bool {
    if array1.count == array2.count {
        for i in 0..<array1.count {
            if array1[i].count != array2[i].count {
                return false
            }
        }
        return true
    } else {
        return false
    }
}
