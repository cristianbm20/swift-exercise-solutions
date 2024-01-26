// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
  return layers.count * 2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  let noodlesCount = layers.filter { $0 == "noodles" }.count * 3
  let sauceCount = Double(layers.filter { $0 == "sauce" }.count) * 0.2
  return (noodles: noodlesCount, sauce: sauceCount)
}

// TODO: define the 'toOz' function
func toOz(_ tuple: inout (noodles: Int, sauce: Double)) {
  return tuple.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
  func countLayers(_ layer: String) -> Int { layers.filter { $0 == layer }.count }
  return countLayers("mozzarella") + countLayers("ricotta") + countLayers("béchamel") <= countLayers("meat") + countLayers("sauce")
}
