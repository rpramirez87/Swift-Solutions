func threeSplit(a: [Int]) -> Int {
    var sum = 0
    for num in a {
        sum += num
    }
    sum /= 3
    var cut1 = 0, cut2 = 0, cut3 = 0, count = 0
    var sum1 = 0, sum2 = 0, sum3 = 0
    for cut1 in 0..<a.count {
        sum1 += a[cut1]
        if sum1 == sum {
            sum2 = 0
            if cut1 + 1 >= a.count {
                continue
            }
            for cut2 in (cut1 + 1)..<a.count {
                sum2 += a[cut2]
                if sum2 == sum {
                    sum3 = 0
                    if cut2 + 1 >= a.count {
                        continue
                    }
                    for cut3 in (cut2 + 1)..<a.count {
                        sum3 += a[cut3]
                    }
                    if sum3 == sum {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}
