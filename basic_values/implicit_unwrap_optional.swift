// Implicitly Unwrapped Optionals
// when a optional value in the code is confrimed to be not nil  then the optional is called implicity unwrapped optional

// explicity unwraping optional
let possibleString:String? = "passible string"
let mustBeString:String = possibleString!

//implicity unwraping optional
let assumeString: String! = "ImplicityUnwrap" // optional
let stringValue:String =  assumeString // unwrapping 

print(assumeString as Any) // ImplicityUnwrap

// implicit optional with nil value 
let sencodAssumedString:String! = nil

if sencodAssumedString != nil {
    print(sencodAssumedString!) // not execute
}

if let definiteString = sencodAssumedString {
    print(definiteString) // not execute
}