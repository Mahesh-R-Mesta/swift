
extension Double {
  func toPercentage() -> String {
    return "\(self/100) %"
  }
  func rupees() -> String {
    return "Rs \(self)"
  }
  func dollar() -> String {
    return "\(self/83.9) $"
  }
}


print(12.5.toPercentage())
print(12.56.rupees())
print(457768.dollar())


