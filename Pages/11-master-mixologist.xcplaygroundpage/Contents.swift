let drinksList = [
  "beer": 0.5,
  "soda": 0.5,
  "water": 0.5,
  "shot": 1.0,
  "mixed drink": 1.5,
  "fancy drink": 2.5,
  "frozen drink": 3.0
]

func timeToPrepare(drinks: [String]) -> Double {
  var totalTime: Double = 0
  for drink in drinks {
    totalTime += drinksList[drink] ?? 0
  }
  return totalTime
}

timeToPrepare(drinks: ["beer", "beer", "fancy drink", "unknown"])


let limesWedges = [
  "small": 6,
  "medium": 8,
  "large": 10
]

func makeWedges(needed: Int, limes: [String]) -> Int {
  if limes.isEmpty { return 0 }
  var usedLimes = 0
  var neededLimes = needed
  while neededLimes > 0 && usedLimes < limes.count {
    let limeSize = limes[usedLimes]
    neededLimes -= limesWedges[limeSize] ?? 0
    usedLimes += 1
  }
  return usedLimes
}

makeWedges(needed: 25, limes: ["small", "small", "large", "medium", "small"])
makeWedges(needed: 25, limes: [])
makeWedges(needed: 80, limes: ["small", "large", "large", "medium", "small", "large", "large"])


func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var remainingMinutes = Double(minutesLeft)
  var myRemainingOrders = remainingOrders
  while remainingMinutes > 0 && myRemainingOrders.isEmpty == false {
    remainingMinutes -= timeToPrepare(drinks: myRemainingOrders[0])
    myRemainingOrders.removeFirst()
  }
  return myRemainingOrders
}

finishShift(minutesLeft: 2, remainingOrders: [["beer", "frozen drink", "shot"], ["fancy drink", "soda"], ["beer", "beer", "water"], ["mixed drink", "frozen drink"]])
finishShift(minutesLeft: 0, remainingOrders: [["beer", "frozen drink", "shot"]])


func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beers = orders.filter{ $0.drink == "beer" }.sorted { $0.time < $1.time }
  var sodas = orders.filter { $0.drink == "soda" }.sorted { $0.time < $1.time }
  let resultBeer = beers.isEmpty ? nil : (first: beers.first!.time, last: beers.last!.time, total: beers.count)
  let resultSoda = sodas.isEmpty ? nil : (first: sodas.first!.time, last: sodas.last!.time, total: sodas.count)
  
  return (resultBeer, resultSoda)
}

orderTracker(orders: [(drink: "beer", time: "10:01"), (drink: "frozen drink", time: "10:02"), (drink: "shot", time: "10:05"), (drink: "fancy drink", time: "10:06"), (drink: "soda", time: "10:09"), (drink: "beer", time: "10:15"), (drink: "beer", time: "10:22"), (drink: "water", time: "10:26"), (drink: "mixed drink", time: "10:28"), (drink: "frozen drink", time: "10:33")])
