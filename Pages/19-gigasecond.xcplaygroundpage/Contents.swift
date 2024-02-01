import Foundation

func gigasecond1(from: Date) -> Date {
  let gigasecond: TimeInterval = pow(10, 9)
  let resultDate = from.addingTimeInterval(gigasecond)
  return resultDate
}

func gigasecond2(from: Date) -> Date {
  from + 1000000000
}
