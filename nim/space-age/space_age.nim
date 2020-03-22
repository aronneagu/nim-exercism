func age*(planet: string, age: int64): float =
  case planet
  of "Mercury": return float(age) / (31557600 * 0.2408467)
  of "Venus": return float(age) / (31557600 * 0.61519726)
  of "Earth": return float(age) / 31557600
  of "Mars": return float(age) / (31557600 * 1.8808158)
  of "Jupiter": return float(age) / (31557600 * 11.862615)
  of "Saturn": return float(age) / (31557600 * 29.447498)
  of "Uranus": return float(age) / (31557600 * 84.016846)
  of "Neptune": return float(age) / (31557600 * 164.79132)