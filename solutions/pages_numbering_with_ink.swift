func pagesNumberingWithInk(current: Int, numberOfDigits: Int) -> Int {
    var pages = 0, old = current, current = current, digits = numberOfDigits
    while true {
        var length = numberLength(current), next = minLargeThanLength(length), count = next - current
        if count * length <= digits {
            pages += count
            digits -= count * length
            current = next
        } else {
            pages += (digits / length)
            break
        }
    }
    return pages + old - 1
}

func numberLength(number: Int) -> Int {
    var length = 0, number = number
    while number > 0 {
        length += 1
        number /= 10
    }
    return length
}

func minLargeThanLength(length: Int) -> Int {
    var result = 1
    for i in 1...length {
        result *= 10
    }
    return result
}
