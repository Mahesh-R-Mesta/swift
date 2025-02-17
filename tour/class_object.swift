class MyClass {
  let numberOfStudents:Int
  // initializer class
  init(capacity:Int){
    self.numberOfStudents = capacity
  }

  var attendedStudents:Int = 0
  var absentStudents:Int = 0
  
  func setAbsents(absentees:Int) {
    absentStudents = absentees
    attendedStudents = numberOfStudents - absentees
  }

  func description()->String {
    return "Attended \(attendedStudents) - Absent \(absentStudents)"
  }

  // de initialize function before memory deallocate 
  deinit {
    
  }
}

let myClass = MyClass(capacity: 50)
myClass.setAbsents(absentees:10)
print(myClass.description())


//Inheritance
class ClassA : MyClass {
  let className:String
  let classPercentage:Float
  init(className:String,percentage:Float,capacity:Int){
    self.className = className
    self.classPercentage = percentage
    super.init(capacity: capacity)
  }

  override func description() -> String {
    return """
    -------- Class \(className) students ------
    Class percenatge :\(self.classPercentage)%
    Student attended: \(self.attendedStudents)
    Student absent: \(self.absentStudents)
    -------------------------------------------
    """
  }
} 

let a = ClassA(className: "9th", percentage: 90.5, capacity: 100)
a.setAbsents(absentees: 15)
print(a.description())

class Shape {
  var shape:String
  
  init(shape:String) {
    self.shape = shape
  }

  func area() -> Double {
    return 0
  }
}

class EquilateralTraingle:Shape {
  var side:Double
  init(side:Double) {
    self.side = side
    super.init(shape: "Triangle")
  }
  override func area() -> Double {
    return  0.43301270 * side * side 
  }
}

class Square:Shape {
  var sideInCM:Double
  
  init(side:Double) {
    self.sideInCM = side
    super.init(shape: "Square")
  }
  // getter & setter method in class
  var sideInMm:Double {
    get {
      return sideInCM * 10
    }
    set {
      sideInCM = newValue/10
    }
  }

  override func area() -> Double {
    return sideInMm * sideInMm
  }
}

let sqr = Square(side: 10)
print(sqr.shape,"side: \(sqr.sideInMm) mm","area: \(sqr.area()) mm*mm")
sqr.sideInMm = 235
print(sqr.shape,"side: \(sqr.sideInMm) mm","area: \(sqr.area()) mm*mm")



//willSet & didSet are property of class which runs code before assigning and after assinging new value
class AllShapes {
  // if we set this property ouside then willSet property will run code before assigning value to square 
  var square: Square {
    willSet { // implicit property is newValue for setter 
      triagle.side = newValue.sideInCM
    }
  }
  var triagle:EquilateralTraingle {
    willSet {  // we can define custom name instead of newValue 
      square.sideInMm = newValue.side * 10
    }
  }
  
  init(side:Double) {
    self.square = Square(side: side)
    self.triagle = EquilateralTraingle(side: side)
  }
}

let shape = AllShapes(side: 20)
print("square",shape.square.sideInCM) //20
print("triangle",shape.triagle.side) //20

shape.square = Square(side: 30)// willset method get's called and value get's assigned

print("square",shape.square.sideInCM) //30
print("triangle",shape.triagle.side) // 30

