func isIsogram(_ string: String) -> Bool {
  var characterSet = Set<Character>()
  
  for char in string.lowercased() {
    if characterSet.contains(char) { return false }
    if char.isLetter { characterSet.insert(char) }
  }
  
  return true
}

isIsogram("HeLlo")
isIsogram("World")
isIsogram("six-year-old")
