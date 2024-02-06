import Foundation

enum GrainsError: Error {
  case inputTooLow
  case inputTooHigh
}

struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    if num < 1 {
      throw GrainsError.inputTooLow
    }
    if num > 64 {
      throw GrainsError.inputTooHigh
    }
    let result = pow(2, Double(num - 1))
    return UInt64(result)
  }
  
  static var total: UInt64 {
    var totalGrains: UInt64 = 0
    var currentGrains: UInt64 = 1
    for _ in 1...63 {
      totalGrains += currentGrains
      currentGrains *= 2
    }
    totalGrains += currentGrains
    
    return totalGrains
  }
}

try Grains.square(4)
try Grains.square(32)
Grains.total
