let myStack = [1, 2, 3, 4]

func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}
getCard(at: 2, from: myStack)


func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if (0...stack.count).contains(index) {
    var resultStack = stack
    resultStack[index] = newCard
    return resultStack
  }
  return stack
}
setCard(at: 3, in: myStack, to: 14)


func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var resultStack = stack
  resultStack.append(newCard)
  return resultStack
}
insert(33, atTopOf: myStack)


func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  if (0...stack.count).contains(index) {
    var resultStack = stack
    resultStack.remove(at: index)
    return resultStack
  }
  return stack
}
removeCard(at: 2, from: myStack)


func removeTopCard(_ stack: [Int]) -> [Int] {
  if !stack.isEmpty {
    var resultStack = stack
    resultStack.removeLast()
    return resultStack
  }
  return stack
}
removeTopCard(myStack)


func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var resultStack = stack
  resultStack.insert(newCard, at: 0)
  return resultStack
}
insert(21, atBottomOf: myStack)


func removeBottomCard(_ stack: [Int]) -> [Int] {
  if !stack.isEmpty {
    var resultStack = stack
    resultStack.removeFirst()
    return resultStack
  }
  return stack
}
removeBottomCard(myStack)


func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}
checkSizeOfStack(myStack, 4)


func evenCardCount(_ stack: [Int]) -> Int {
  return (stack.filter { ($0 % 2) == 0 }).count
}
evenCardCount(myStack)
