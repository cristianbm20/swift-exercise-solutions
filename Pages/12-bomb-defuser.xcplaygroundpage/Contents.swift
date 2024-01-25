let flip: ((String, String, String)) -> (String, String, String) = {
  ($0.1, $0.0, $0.2)
}

flip(("1", "2", "3"))


let rotate: ((String, String, String)) -> (String, String, String) = {
  ($0.1, $0.2, $0.0)
}

rotate(("1", "2", "3"))


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  return { id, wires in
    var currentWires = wires
    var idNumber = id
    for _ in 0..<8 {
      let currentBit = idNumber & 1
      currentWires = currentBit == 0 ? flipper(currentWires) : rotator(currentWires)
      idNumber >>= 1
    }
    return currentWires
  }
}

let shuffler = makeShuffle(flipper: flip, rotator: rotate)
shuffler(155, ("red", "yellow", "blue"))
