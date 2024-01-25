func newScoreBoard() -> [String: Int] {
  var newBoard: [String: Int] = [:]
  return newBoard
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores[name] = nil
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if let currentScore = scores[name] { scores[name] = currentScore + delta }
  else { scores[name] = delta }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  return scores.sorted { $0.0 < $1.0 }
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  return scores.sorted { $0.1 > $1.1 }
}
