let implicityConst = 5 // let used as constant value
var implicitVariable = 10 // var as variable
implicitVariable = 15 // value can be changed
let explicitConst:Int = 25 // type declearatiom
let explicitFloat:Float = 4
let explicitBoolean: Bool = true
let explicitDouble:Double = 3.5
let explicit64Int:Int64 = 234234234234324
let explicitString:String? = nil


// conversions: explicitly we need to convert to str instance
let label = "The width of the wall is "
let width:Float = 234.5
let sentance = label + String(width)
let height:Int = 10
print(Float(height) + width)
print(sentance)

// including values in string
let apples = 3
let oranges = 2
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples+oranges) fruits"
print(appleSummary,", ",fruitSummary)

// list and dictionary
let fruits:[String] = ["Apple","Straberry","Grapes"]
//fruits[1] = "Orange" ERROR: change 'let' to var
//fruits.append("Orange") ERROR: change 'let' to var
print(fruits)
let anyTypes:[Any] = [12,"Apple",23.45] // Any means dynamic
let usermap:[Int:String?] = [
  11:"Mahesh mesta",
  21:"Sachin swamy",
  22:"Rakesh",
  23: nil
]
// usermap[24] = "Vikas" ERROR: change 'let' to var
print(usermap[21] as Any)
var users:[String] = []
users.append("Sharma") // append function
users.append("Vikram")
users.append("Rakesh")
users.remove(at: 0)
print(users)

var dictionary:[String:String] = [:]
dictionary["A"] = "Apple"
dictionary["B"] = "Ball"
dictionary["C"] = "Cat"
print(dictionary)

var myCollection:(String,Int) = ("Space",20)



let integer:Int = 23 // platfrom specific size (64/32) bit
let int8:Int8 = 123 
let int16:Int16 = 123 
let int32:Int32 = 123 
let int64:Int64 = 123 

//unsign int
let unsignInt8:UInt8 = 234 // 8 bit size: no sign (-)
let unsignInt16:UInt16 = 234
let unsignInt32:UInt32 = 234
let unsignInt64:UInt64 = 234





