func higherVersion(ver1: String, ver2: String) -> Bool {
    let nums1 = split(ver1), nums2 = split(ver2)
    for i in 0..<nums1.count {
        if nums1[i] < nums2[i] {
            return false
        } else if nums1[i] > nums2[i] {
            return true
        }
    }
    return ver1 != ver2
}

func split(ver: String) -> [Int] {
    let chars = ver.characters.map({String($0)})
    var num = 0, nums: [Int] = []
    for char in chars {
        if "0" <= char && char <= "9" {
            num = num * 10 + Int(char)!
        } else {
            nums.append(num)
            num = 0
        }
    }
    nums.append(num)
    return nums
}
