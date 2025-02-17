//You use the for-in loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
  print("name: \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let times = 20

for i in 0...times {
  // print("")
}
// strides is similar to 1...5 with 2 time increment option
for i in stride(from:0,to:times,by: 2) {
  print("2 time incremented: i: \(i)")
}