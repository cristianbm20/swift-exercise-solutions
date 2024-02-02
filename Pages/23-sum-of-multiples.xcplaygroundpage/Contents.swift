func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  let multiples = inMultiples.flatMap { num -> [Int] in
    guard num != 0 else { return [] }
    return stride(from: num, to: limit, by: num).map { $0 }
  }
  
  let uniqueMultiples = Set(multiples)
  return uniqueMultiples.reduce(0, +)
}

toLimit(20, inMultiples: [3, 5])
