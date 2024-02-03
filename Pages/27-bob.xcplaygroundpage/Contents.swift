import Foundation

class Bob {
  static func response(_ message: String) -> String {
    let msg = message.trimmingCharacters(in: .whitespacesAndNewlines)
    
    if msg.isEmpty { return "Fine. Be that way!" }
    
    let isQuestion = msg.last == "?"
    let onlyLetters = msg.filter { $0.isLetter }
    let isShouting = !onlyLetters.isEmpty && onlyLetters.uppercased() == onlyLetters
    let noContainsLetters = onlyLetters.isEmpty
    
    if isShouting && isQuestion {
      return "Calm down, I know what I'm doing!"
    } else if isShouting {
      return "Whoa, chill out!"
    } else if isQuestion {
      return "Sure."
    } else {
      return "Whatever."
    }
  }
}
