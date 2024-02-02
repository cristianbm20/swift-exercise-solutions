class Squares {
  let num: Int
  
  init(_ num: Int) {
    self.num = num
  }
  
  var squareOfSum: Int {
    let sum = num * (num + 1) / 2
    return sum * sum
  }
    
  var sumOfSquares: Int {
    return num * (num + 1) * (2 * num + 1) / 6
  }

  var differenceOfSquares: Int {
    return squareOfSum - sumOfSquares
  }
}

Squares(5).num
Squares(5).squareOfSum
Squares(5).sumOfSquares
Squares(5).differenceOfSquares
