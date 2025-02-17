/* Hash value for set types:
Values must hashable in order to store in sets
Hashable provide way of matching types by Int value 
a == b
for Int,String,Bool..etc all are Hashable by default
enumaration case also Hashable 
We have to make custom types as hashable in order to use in sets & dictinory keys
*/

struct Characters : Hashable {
  var name:String
  var role:String
}

// sets are unordered same types of unique items
// if let is used sets are immutable
// intializer syntax
var characters = Set<Characters>()
print("Number of characters are \(characters.count)")

characters.insert(Characters(name:"Sachin",role:"Krishna"))

characters.insert(Characters(name:"Sachin",role:"Krishna"))

characters.insert(Characters(name:"mahesh",role:"Arjuna"))

for part in characters {
  print("Character: \(part.role) Name:\(part.name)")
}

// empty set of characters assigned 
characters = [] //[]

// normal set declaration
var favorateItems:Set<String> = ["MacBook","Bike"]
// here swift will infer that the set is String type
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

favorateItems.insert("Raspberry pi")

if let item = favoriteGenres.remove("Hip hop") {
  print("found item & removed \(item)")
}

print(favorateItems.contains("Scooter"))

//sorted sets


for item in favorateItems.sorted() {
  print("Sorted item \(item)")
}

// set operations
// intersection, union ,substracting,symetrical deferentail

var a:Set = [3,4,5,2,6,1]
var b:Set = [8,6,9,0,8,1]

// common values in both sets
print(a.intersection(b)) // [1,6] interesect

// combine two sets with unique values
print(a.union(b))// [0,3,4,6,2,5,9,1,8]

// neglecting/remove common elements in two sets 
print(a.symmetricDifference(b)) // [0,3,4,2,5,9,8]

// removing common element from a with are in b 
print(a.subtracting(b)) //[2,3,5,4]

//Set Membership and Equality
// we can use == operator to check two sets conatins same elements

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(farmAnimals.isSuperset(of: houseAnimals)) // true
print(houseAnimals.isSubset(of: farmAnimals)) // true
print(cityAnimals.isDisjoint(with: farmAnimals)) // true
