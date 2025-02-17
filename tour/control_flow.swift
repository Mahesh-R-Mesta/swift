let indivitualScores:[Int] = [34,78,86,45,67,34,45,32,63,29]
var passed=0,failed = 0
//loop & if condition
for score in indivitualScores {
  if score > 50 {
    passed+=1
  } else {
    failed+=1
  }
}
print("\(passed) no of students passed and \(failed) Failed")

//conditional assignment
let score = indivitualScores[1]

let scoreDecoration = score > 10  ? "🎉":""
print("\(passed) Student congrats" + scoreDecoration)

// null check condition statement
var optionalVariable:String? = nil

optionalVariable = "Mahesh"
//if optionalVariable is null then funtion skips
//excutes if name is not null 
if let name = optionalVariable { 
  print("Hello \(name)")
} else {
  print("Hello someone")
}

// if let value = nil {
//   print("It will not print since value is nil")
// } else {
//   print("value is nil")
// }

// optional null safty
let user_type:String = "Employee"
var user_name:String?
let label = "Welcome \(user_name ?? user_type)"
print(label)


//switch statement

let animalName = "Lion king"

switch animalName {
  case "Tiger":
      print("It's a triger")
  case "kingcobra","anaconda":
     print("It's dangerous snake")
  case let x where x.hasSuffix("king"):
     print("Ohh king of forest might be Lion")
  default:
     print("May be you")
}


let numberDict = [
  "Prime": [2, 3, 5, 7, 11, 13],
]

for (type,numbers) in numberDict {
  for number in numbers {
    print(type,number)
  }
}

// while loop
var n = 1
while n < 200 {
  n*=2
}
print(n)

var v = 0
repeat {
  v+=1
} while v < 200;
print(v)

// index ranges ..< 
for index in 1..<30 { // 1 - 29
  v=index
}
print(v)