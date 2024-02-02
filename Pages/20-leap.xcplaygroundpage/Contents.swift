class Year {
  let year: Int
  
  init(calendarYear year: Int) {
    self.year = year
  }
  
  var isLeapYear: Bool {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  }
}

Year(calendarYear: 2000).isLeapYear
