func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  return powerUpActive && touchingEagle
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  return touchingPowerUp || touchingSeed
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  return !powerUpActive && touchingEagle ? true : false
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  return !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle) && hasPickedUpAllSeeds ? true : false
}
