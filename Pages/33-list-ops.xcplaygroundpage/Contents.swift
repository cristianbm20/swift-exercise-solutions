class ListOps {
  static func append<T>(_ list1: [T], _ list2: [T]) -> [T] {
    return list1 + list2
  }
  
  static func concat<T>(_ lists: [T]...) -> [T] {
    var result = [T]()
    for list in lists {
      result += list
    }
    return result
  }
  
  static func filter<T>(_ list: [T], _ predicate: (T) -> Bool) -> [T] {
    var filteredList = [T]()
    for item in list {
      if predicate(item) {
        filteredList.append(item)
      }
    }
    return filteredList
  }
  
  static func length<T>(_ list: [T]) -> Int {
    var counter = 0
    for _ in list {
      counter += 1
    }
    return counter
  }
  
  static func map<T>(_ list: [T], _ function: (T) -> T) -> [T] {
    var mappedList = [T]()
    for item in list {
      mappedList.append(function(item))
    }
    return mappedList
  }
  
  static func foldLeft<T, U>(_ list: [T], accumulated: U, combine: (U, T) -> U) -> U {
    var accumulator = accumulated
    for item in list {
      accumulator = combine(accumulator, item)
    }
    return accumulator
  }
  
  static func foldRight<T, U>(_ list: [T], accumulated: U, combine: (T, U) -> U) -> U {
    var accumulator = accumulated
    for item in list.reversed() {
      accumulator = combine(item, accumulator)
    }
    return accumulator
  }
  
  static func reverse<T>(_ list: [T]) -> [T] {
    var reversedList = [T]()
    for item in list {
      reversedList.insert(item, at: 0)
    }
    return reversedList
  }
  
}
