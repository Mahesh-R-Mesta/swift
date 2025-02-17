//Range Operator

//1. Closed range operator: 1..5

for index in 1...5  { //1 to 5 
  print(index)
}

//2. Half range operator: 1..<5

for index in 1..<5 {
  print(index)
}

//3. One side range operator: ...5
let charecters:[Character] = ["H","E","L","L","O"]

for char in charecters[1...] { //E,L,L,O
  print(char)
}
print(String(charecters[...2])) //H,E,L

print(...5)
print(1...)