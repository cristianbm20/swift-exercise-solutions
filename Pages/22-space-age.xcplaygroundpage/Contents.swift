class SpaceAge {
  let ageInSeconds: Double
  
  init(_ ageInSeconds: Double) {
    self.ageInSeconds = ageInSeconds
  }
  
  var onEarth: Double { ageInSeconds / 31557600.0 }
  var onMercury: Double { onEarth / 0.2408467 }
  var onVenus: Double { onEarth / 0.61519726 }
  var onMars: Double { onEarth / 1.8808158 }
  var onJupiter: Double { onEarth / 11.862615 }
  var onSaturn: Double { onEarth / 29.447498 }
  var onUranus: Double { onEarth / 84.016846 }
  var onNeptune: Double { onEarth / 164.79132 }
}
