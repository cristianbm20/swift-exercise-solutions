func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func revealSecret(usedPassword: String) -> String {
    return usedPassword == password ? secret : "Sorry. No hidden secrets here."
  }
  return revealSecret
}

let secretFunction = protectSecret("Steal the world's supply of french fries!", withPassword: "5up3r53cr37")
secretFunction("Open sesame")
secretFunction("5up3r53cr37")


func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}

func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}

generateCombination(forRoom: 227, usingFunction: makeCombo)
