func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
  let withoutDiscount = dailyRateFrom(hourlyRate: hourlyRate) * 22
  let discount = withoutDiscount * withDiscount / 100.0
  return (withoutDiscount - discount).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
  let monthlyRate = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: withDiscount)
  let dailyRate = monthlyRate / 22
  let result = (budget / dailyRate).rounded(.down)
  return result
}
