enum HammingError: Error {
  case lengthMismatch
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  guard dnaSequence.count == against.count else {
    throw HammingError.lengthMismatch
  }
  
  var hamming = 0
  
  for i in dnaSequence.indices {
    if dnaSequence[i] != against[i] { hamming += 1 }
  }
  
  return hamming
}

compute("", against: "")
try? compute("GGACGGATTCTG", against: "AGGACGGATTCT")
