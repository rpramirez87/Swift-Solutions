func lateRide(n: Int) -> Int {
    let hour = n / 60
    let minute = n % 60
    return hour / 10 + hour % 10 + minute / 10 + minute % 10
}
