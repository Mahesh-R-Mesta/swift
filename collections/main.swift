//Array: an array stores values of the same type in an ordered list
// create arry with default value
/* collections are when delcared with constant then they are immutable */

let zeros = Array(repeating: 0.0, count: 3)
let values = Array(repeating: 2.4,count: 4)

let allValues = zeros + values
print(allValues)

// create empty error
let names:[String] = []
print(names.count) // 0

// shoppingList 
var shoppingList:[String] = ["Snacks","Biscut"]
//adding 
shoppingList.append("Milk")
// assigning by string subscript 
shoppingList[0] = "Flour"

//Retrieve a value from the array by using subscript syntax
var firstItem = shoppingList[0]

//we can append one or more items by adding sign +
shoppingList+=["Chocobar","Ice-cream"]

//replacing the string 
shoppingList[3...4] = ["Tomato","Dargon fruit"]

//insert snacks
shoppingList.insert("Snacks", at: 1)

//remove snack
shoppingList.remove(at: 1)

// remove last 
let dragon = shoppingList.removeLast()
print("removed \(dragon)")

print(shoppingList)

// iterate with ebumerate and print all values
for (index,item) in shoppingList.enumerated() {
   print("No.\(index+1) ",item)
}



