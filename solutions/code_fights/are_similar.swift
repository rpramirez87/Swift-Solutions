func areSimilar(A: [Int], B: [Int]) -> Bool {
    var diff = 0
    var a1, a2, b1, b2: Int?
    for i in 0..<A.count {
        if A[i] != B[i] {
            diff += 1
            if a1 == nil {
                a1 = A[i]
                b1 = B[i]
            } else {
                a2 = A[i]
                b2 = B[i]
            }
        }
    }
    return diff == 0 || (diff == 2 && (a1! == b2! && a2! == b1!))
}
