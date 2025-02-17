// functions are a chunck of code that can execute a specific task
// normal function with no return 
func greeting(name: String) {
  print("Hello.. \(name)")
}
// functions with no return type actually return specisl type of void. which is empty tuple  written as ()

// single line will return "Welcome..." as it's a implicity return type in swift (getter are also implicit returns)
func greetingAutoReturn(firstName:String,lastName:String) -> String {
  "Welcome! \(firstName) \(lastName)" // no return require for single line 
} 
print(greetingAutoReturn(firstName: "Mahesh",lastName: "Mesta"))

/*Return values can be ignored, but a function that says it will return a value must always do so*/

/* function with returning multiple value 
and Omitting Argument Labels _ as which indicate no name explicity needed to define */

// variadic parameter input
func minMax(_ numbers: Int...) ->  (min:Int,max:Int){
  var min:Int = numbers[0]
  var max:Int = numbers[0]
  for num in numbers[1..<numbers.count] {// ignoring first element
    if min > num {
      min = num
    }
    if max < num {
      max = num
    }
  }
  return (min,max)
}

let ranges = minMax(1,3,4,5,2,7,12,7)

print("maxValue: \(ranges.max) minValue: \(ranges.min)")

// We can write a label before variable name specifiying parameter name it's known as argument labeling

func welcomeUser(from name:String) -> String {
  "\(name) will Welcome's the guests"
}

print(welcomeUser(from:"Mahesh")) 

//Omitting argument label  // Default parameter values 

func someFunc(_ name:String, age:Int = 18) {}

someFunc("Hello users") // no need to define name

// variadic parameter delcration: we can take one or more input values as array. to do we need to add three periodic character (...)
func meanValue(num numbers:Double...) -> Double {
  var total:Double = 0 
  numbers.forEach { value in total+=value }
  return total/Double(numbers.count)
}
//

print("Mean value: \(meanValue(num: 1.4,5.2,2.4,5.2,7.2,9.2))")

// In-Out parameter
/*The parameter passed to the functions are by default a constant values and cannot be changed during the function. an attempt can cause a error .if we want a variable which can be changes even after function ended we can used in-out key to delcare variable*/

func swapNumber(a:inout Int,b:inout Int) {
  let temp = a
  b = a
  a = temp
}

var aValue = 6, bValue = 10

// we cannot pass a literal values (2,3..) or constant variable to inout parameter and we should add aperasand & before declaring variable while passing to the function

swap(&aValue, &bValue)

print("aVaue:\(aValue) bValue:\(bValue)")

//Note: In-out parameters can’t have default values, and variadic parameters can’t be marked as inout.

//funtion type as parameter type 
func update(value:String,callback: (String)-> String) {
 let value =  callback(value)
  print(value)
}

update(value: "Sachin", callback: {(name) in 
  return "Welcome twice \(name)"
})

//return type as function
/*Capturing Values 
A closure can capture constants and variables from the surrounding context in which it’s defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists : { value in self.v = value } */
/*If you assign a closure to a property of a class instance, and the closure captures that instance by referring to the instance or its members, you will create a strong reference cycle between the closure and the instance. Swift uses capture lists to break these strong reference cycles*/

func increment() -> (Int) -> Int {
  var value:Int = 0
  // nested function
  func addValue(a:Int) -> Int {
    value+=a
    return value
  }
  return addValue
}

let gen = increment()

print(gen(3)) //3
print(gen(2)) //5
 