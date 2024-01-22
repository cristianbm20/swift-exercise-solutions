// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

print(remainingMinutesInOven(elapsedMinutes: expectedMinutesInOven))

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: Int) -> Int {
  return layers * 2
}

print(preparationTimeInMinutes(layers: 2))

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
  return preparationTimeInMinutes(layers: layers) + elapsedMinutes
}

print(totalTimeInMinutes(layers: 2, elapsedMinutes: expectedMinutesInOven))
