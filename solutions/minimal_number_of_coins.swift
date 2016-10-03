func minimalNumberOfCoins(coins: [Int], price: Int) -> Int {
    var i = coins.count - 1, result = 0, price = price
    while price > 0 && i >= 0 {
        var coin = coins[i]
        result += price / coin
        price -= (price / coin) * coin
        i -= 1
    }
    return result
}
