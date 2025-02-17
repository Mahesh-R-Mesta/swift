// a protocol is used to declare required properties
// protcol to declare a protocol
protocol DescribeProtocol {
  var description: String { get } 
  mutating func discribe() 

  func oneword()
}
// protocols can be used on classes,structures & extension 

class CircleShape:DescribeProtocol { 
  var description:String = "A circular shape where perimeter is 2pi*r "
  
  func discribe()  {
    print(description)
  }
  func oneword() {
    print("Circle")
  }
}
let shape = CircleShape() 
shape.discribe()
shape.description = "set has changed value"
shape.discribe()

// the use of the mutating keyword in the declaration of Color class to mark a method that modifies the structure
struct Color:DescribeProtocol {
  var description:String = "Its color class and convert hex to color"
  // mutating func -> allows function mutate description word of protocol 
  mutating func discribe() {
    description += " ex: Color(0xff567879)"
    print(description)
  }
  func oneword() {
    print("color") 
  }
}

var color = Color()
print(color.discribe())
color.description = "No data"
print(color.description)

//You can use a protocol name just like any other named type — for example, to create a collection of objects that have different types but that all conform to a single protocol. When you work with values whose type is a boxed protocol type, methods outside the protocol definition aren’t available.
let colorProto: DescribeProtocol = Color()

let protocolInstances: [DescribeProtocol] = [Color(), CircleShape()]
print("Iterator....")
for proto in protocolInstances {
  print(proto.description) 
}


// protocol to extension class
protocol Price {
  var priceDescription:String {get}
  mutating func rupees() ->String
}

extension Int:Price {
  var priceDescription:String {
    return "Amount is \(self).00 Rs"
  }
  mutating func rupees() -> String {
    self+=1
    return "\(self).00 Rs"
  }
}

print(7.priceDescription) 
var price = 10
print(price.rupees()) 
// print(10.rupees()) throws error
