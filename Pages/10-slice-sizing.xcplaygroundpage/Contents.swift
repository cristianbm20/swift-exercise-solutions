func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  if let pizzaDiameter = diameter, let pizzaSlices = slices, pizzaSlices > 0 {
    let radio = pizzaDiameter / 2
    let pizzaArea = Double.pi * (radio * radio)
    let sliceArea = pizzaArea / Double(pizzaSlices)
    return sliceArea
  }
  return nil
}
sliceSize(diameter: 16, slices: 12)


func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  var firstPizzaSliceArea: Double?
  var secondPizzaSliceArea: Double?
  
  if let firstPizzaD = Double(diameterA), let firstPizzaSlices = Int(slicesA), firstPizzaD >= 0, firstPizzaSlices > 0 {
    firstPizzaSliceArea = sliceSize(diameter: firstPizzaD, slices: firstPizzaSlices)
  } else {
    firstPizzaSliceArea = nil
  }
  
  if let secondPizzaD = Double(diameterB), let secondPizzaSlices = Int(slicesB), secondPizzaD >= 0, secondPizzaSlices > 0 {
    secondPizzaSliceArea = sliceSize(diameter: secondPizzaD, slices: secondPizzaSlices)
  } else {
    secondPizzaSliceArea = nil
  }
  
  switch (firstPizzaSliceArea, secondPizzaSliceArea) {
  case let (a?, b?) where a > b:
    return "Slice A is bigger"
  case let (a?, b?) where a < b:
    return "Slice B is bigger"
  case let (a?, nil):
    return "Slice A is bigger"
  case let (nil, b?):
    return "Slice B is bigger"
  default:
    return "Neither slice is bigger"
  }
}
biggestSlice(diameterA: "10", slicesA: "6", diameterB: "14", slicesB: "12")
biggestSlice(diameterA: "10", slicesA: "6", diameterB: "12", slicesB: "8")
biggestSlice(diameterA: "Pepperoni", slicesA: "6", diameterB: "Sausage", slicesB: "12")
biggestSlice(diameterA: "-16", slicesA: "8", diameterB: "12", slicesB: "6")
biggestSlice(diameterA: "0", slicesA: "8", diameterB: "16 inches", slicesB: "8")
