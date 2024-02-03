extension Array {
  func accumulate<T>(_ transform: (Element) -> T) -> [T] {
    var result: [T] = []
    for i in self {
      result.append(transform(i))
    }
    return result
  }
}

let numbers = [1, 2, 3, 4, 5]
let square = { (x: Int) -> Int in x * x }
let squaredNumbers = numbers.accumulate(square)
