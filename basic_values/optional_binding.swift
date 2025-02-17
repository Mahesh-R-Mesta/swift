//------optional-------
var statusCode:Int? = 404
statusCode = nil // conatin no value
let message:String? = nil // by default nill
let optionalValue:String = "optional"


if statusCode == nil {
  print("statusCode in nil \(message ?? optionalValue)")
}

/* Skip the code that operates on the value when it’s nil.
* Propagate the nil value, by returning nil or using the ?. operator described in Optional Chaining.
* Provide a fallback value, using the ?? operator.
* Stop program execution, using the ! operator.*/

// optional binding
// it's a way to check optional has a value or not 
let possibleNumber = "457"

if let actualNumber = Int(possibleNumber) {
  print("number is \(actualNumber) ") // excute if actualNumber not null
} else {
  print("not a number") // when actualNumber is null
}

//also we can uses same name to check
let myNumber = Int(possibleNumber)
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}

//You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false

if let firstNo = Int("4"),let secondNo = Int("34"), firstNo <  secondNo {
  print("firstNo:\(firstNo) < secondNo:\(secondNo)")
}

// fallback value 
//Another way to handle a missing value is to supply a default value using the nil-coalescing operator (??)
let name:String? = nil
let label = "Hello \(name ?? "friend")!"


// force unwraping
// forcing optional value to unwrap forcefully this can cause fatal error if optional value contain nil 
let mayBeANumber = "343A"
let converted = Int(mayBeANumber)

guard let number = converted else {
  fatalError("number was invalid")
}

let number = converted! // exclamation mark (!)

// implicitly unwrapped optional

