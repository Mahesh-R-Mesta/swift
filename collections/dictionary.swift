// dictionary are combination of same type of keys and same types of values arranged in unorder.
//constant are immutable
var nameOfInteger:[Int:String] = [:] //empty dict

nameOfInteger[1] = "One"
nameOfInteger[2] = "Two"

nameOfInteger.remove(at: nameOfInteger.startIndex)
print(nameOfInteger.isEmpty,nameOfInteger.count)

nameOfInteger[3] = "Three"

if let name = nameOfInteger[4] {
  print("Name of int \(name)")
}

if let name = nameOfInteger.removeValue(forKey: 3) {
  print("Removed \(name) element")
}

nameOfInteger[5] = "fivee"

if let oldValue = nameOfInteger.updateValue("Five", forKey: 5) {
  print("updated old value: \(oldValue)")
}

let values = [String](nameOfInteger.values)
let keys = (nameOfInteger.keys)

print(values,keys)