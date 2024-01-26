import Foundation

var myPoem = """
Stands so high
Huge hooves too
Impatiently waits for
Reins and harness
Eager to leave
"""

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

splitOnNewlines(myPoem)
splitOnNewlines("Winken.\nBlinken\n\nAnd Nod.")


func firstLetter(_ line: String) -> Character {
  guard !line.isEmpty else { return "_" }
  return line.first!
}

firstLetter("hello")
firstLetter("")


func capitalize(_ phrase: String) -> String {
  return phrase.capitalized
}

capitalize("hello")


func trimSentence(_ line: String) -> String {
  return line.trimmingCharacters(in: .whitespacesAndNewlines)
}

trimSentence("Winken.\nBlinken\n\nAnd Nod.")


func lastLetter(_ line: String) -> Character {
  guard !line.isEmpty else { return "_" }
  return line.last!
}

lastLetter("hello")
lastLetter("")


func backDoorPassword(_ phrase: String) -> String {
  return "\(phrase.capitalized), please"
}

backDoorPassword(myPoem)
backDoorPassword("scoobyDOO!")


func ithLetter(_ line: String, i: Int) -> Character {
  guard !line.isEmpty && i < line.count else { return " " }
  let index = line.index(line.startIndex, offsetBy: i)
  return line[index]
}

ithLetter("Impatiently waits for", i: 2)
ithLetter("Inquisitive", i: 100)


func secretRoomPassword(_ phrase: String) -> String {
  return "\(phrase.uppercased())!"
}

secretRoomPassword("Open Sesame")
