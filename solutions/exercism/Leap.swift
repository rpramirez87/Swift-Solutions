//Solution goes in Sources

class Year {
    var year = 0
    var isLeapYear = true
    init (calendarYear: Int) {
        year = calendarYear
        isLeapYear = (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
    }
}
