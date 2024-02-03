class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var letterScores: [String: Int] = [:]
    
    for (score, letters) in old {
      for letter in letters {
        letterScores[letter.lowercased()] = Int(score)
      }
    }
    
    return letterScores
  }
}
