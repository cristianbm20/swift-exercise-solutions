import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  let r = sqrt((pow(cart.x, 2) + pow(cart.y, 2)))
  let phi = atan2(cart.y, cart.x)
  return (r, phi)
}
let coordinate = (x: -78.70524308742053, y: -39.243573777212724)
cartesianToPolar(coordinate)


func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  let resultTuple = (id: production.id, toy: production.toy, productLead: production.productLead, recipients: gifts.1)
  return resultTuple
}
let prod = (toy: "Chemistry set", id: 328509, productLead: "Binkles")
let gifts = (328509, ["Inés", "Maxime", "Bandile", "Shaurya", "Екатерина"])
print(combineRecords(production: prod, gifts: gifts))
