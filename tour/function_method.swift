// simple greeting with examples
func greeting(name:String,day:String?=nil) -> String  {
  var greet = "Welcome \(name) 🎉" 
  if let dayOfWeek = day { 
    greet += " today is \(dayOfWeek)"
  }
  return greet
}
let response = greeting(name: "Mahesh",day: "Monday")
print(response)


//tuple returning function
func statistic(list:[Int]) -> (min:Int,max:Int,sum:Int) {
  var min = list.first ?? 0, max = list.first ?? 0,sum=0
  for num in list {
    if(num<min ) {
      min = num
    }
    if(num > max) {
      max = num
    }
    sum+=num
  }
  return (min,max,sum)
} 
let stat = statistic(list:[1,3,2,6,8,10,9,12])
print("min:\(stat.min)","max:\(stat.max)","sum:\(stat.sum)")

// returning function

func tapCounter()-> ((Int)->Int) {
  var count = 0
  func increment(inc:Int) -> Int {
    count+=inc
    return count
  }
  return increment
} 

let counter = tapCounter()
print(counter(1))//1
print(counter(2))//3
print(counter(3))//6

// function as input params 
func numberFilter(list:[Int],condition:(Int)->Bool)-> [Int] {
  var filtered:[Int] = []
  for number in list { 
    if(condition(number)) {
      filtered.append(number)
    }
  }
  return filtered
}

func evenFun(number:Int)->Bool {
  return number%2==0
}

let evens = numberFilter(list:[1,2,3,4,5,6,7,8,9,10],condition:evenFun)

// empty funtion unnamed fun
let odds = numberFilter(list:[1,2,3,4,5,6,7,8,9,10],condition:{
  (number:Int)->Bool in number%2 != 0})

print(evens,odds)

// here input varables can be named as $0,$1,$2,$3 
print(numberFilter(list:[1,2,3,4,5,6,7,8,9,10]) { $0%3==0 })  

// defer is a method in function which call during just before returing funtion

var fridgeIsOpen = false
var fruits = ["apple","grapes","banana"]

func frigeContain(_ food:String) -> Bool {
  fridgeIsOpen = true
  var hasItem:Bool = false
  defer { // end of the function this will be called  bfr return
    fridgeIsOpen = false
  }
  if(fridgeIsOpen) {
    hasItem = fruits.contains(food)
  }
  return hasItem
}

if frigeContain("banana") {
  print("fridge contain banana")
}
print("fridge is open: ",fridgeIsOpen) // false

