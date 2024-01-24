func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let totalBudget = monthlyBudget * 12 * 5
  let tenPercentPrice = price / 10
  let priceBudgetDif = price - totalBudget

  if totalBudget >= price {
    return "Yes! I'm getting a \(vehicle)"
  } else if tenPercentPrice >= priceBudgetDif {
    return "I'll have to be frugal if I want a \(vehicle)"
  } else {
    return "Darn! No \(vehicle) for me"
  }
}
canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00)
canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00)
canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200)

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
}
licenseType(numberOfWheels: 2)
licenseType(numberOfWheels: 6)
licenseType(numberOfWheels: 18)
licenseType(numberOfWheels: 0)

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return originalPrice * 80 / 100
  } else if yearsOld < 10 {
    return originalPrice * 70 / 100
  } else {
    return originalPrice / 2
  }
}
calculateResellPrice(originalPrice: 10000, yearsOld: 2)
calculateResellPrice(originalPrice: 10000, yearsOld: 6)
calculateResellPrice(originalPrice: 10000, yearsOld: 12)
