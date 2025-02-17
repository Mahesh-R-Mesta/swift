// closers are a  block of functionality that can be passed around and used in code

// Three types of funtions:
// 1 ) Global function: normal functions used in code 
// 2 ) Nested function: declaring functions inside functions
// 3 ) Closers  expression: light weight syntax and can capture values

/*Optimizations:
 1 ) Inferring parameter and return value types from context
 2 ) Implicit returns from single-expression closures
 3 ) Shorthand argument names
 4 ) Trailing closure syntax*/

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// sort: Normal expression
func sortMethod(_ a:String,_ b:String) -> Bool {
  return a > b
}
let _ = names.sorted(by: sortMethod)

//Closer expression with explicit type
let _ = names.sorted(by: {(a:String,b:String)->Bool in return a > b})

//Inferrering Type & implicit return from single expression
let _ = names.sorted(by:{ s1,s2 in s1 > s2})

//Shorthand argument name 
let _ = names.sorted(by: { $0 > $1 })

// operator method 
let _ = names.sorted(by: >) // check Operator Methods. for Info


// trailing encloses: we can write function parameter outside funtion to help to write large code of function as passign argument

func someEnclosedFuntion(myCloser:(Int)-> Void) {
  myCloser(100)
}

// trailing encloser
someEnclosedFuntion() { (number) in 
  print("Number \(number)")
}

// so we can write trailing closer for sorted

let _ = names.sorted() {$0 > $1}

//If a closure expression is provided as the function’s or method’s only argument and you provide that expression as a trailing closure, you don’t need to write a pair of parentheses ()

let _ = names.sorted {$0 > $1}

// multiple trailing closers 

func uploadImage(from onSuccess:() -> Void,onFailer: (String) -> Void) {
  //..code
  onFailer("Something went wrong")
  onSuccess()
}

uploadImage {
  print("Image uploaded successfully")
} onFailer: { error in
 print(error)
}
/*Capturing Values 
A closure can capture constants and variables from the surrounding context in which it’s defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists : { value in self.v = value } */
/*If you assign a closure to a property of a class instance, and the closure captures that instance by referring to the instance or its members, you will create a strong reference cycle between the closure and the instance. Swift uses capture lists to break these strong reference cycles*/
// This is because functions and closures are reference types

//ESCAPING CLOSERS
/*when we define and take closers funtion as input parameter to the caling funtion. and that callback closer will be called later even function returned than we need to add @escaping, to indicating end the calling function closer will be released to call later */

var connectivityCallback:[(Bool)->Void] = []

//@escaping
func listenForConnectivity(callback: @escaping (Bool)->Void) { 
  connectivityCallback.append(callback)
}

listenForConnectivity { isConnected in 
  print("Connected status: \(isConnected)")
}


//Autoclosures 
// is a closer that automaticaly wrap an expression that being passed as an argument to function
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

let customerProvider = { customersInLine.remove(at: 0) }

print("Now serving \(customerProvider())!")


func removeCustomer(customer customerProvider: @autoclosure ()->String) {
  let user = customerProvider()
  print("removed user by using ecloser \(user)")
}

removeCustomer(customer: customersInLine.remove(at: 0))
//Overusing autoclosures can make your code hard to understand. The context and function name should make it clear that evaluation is being deferred.

// use of escaping in class check out  // https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/#Escaping-Closures

// class SomeOtherClass {
//     var x = 10
//     func doSomething() {
//          someFunctionWithEscapingClosure { x = 100 } // ERROR
//         someFunctionWithEscapingClosure { [self] in x = 100 } //OK
//         someFunctionWithNonescapingClosure { x = 200 }  // OK
//     }
// }


