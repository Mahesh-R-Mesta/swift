//structure and classes are similar but all features in class are not suppored for structures. which makes structure a lightweight and more reasonable to use while development, use calss when they actually required
struct Resolution {
  var width:Int
  var height:Int
}
// automatically generated initializer memeber in struct
var hd = Resolution(width: 1920, height: 1024)

class VideoMode {
  let resolution = Resolution(width: 100, height: 100)
  var frameRate = 50
  var nam:String?
}

// structure and enumrations are value type means they are copied as Int,String ..etc when assigned to new variable or constant or passing throught funtion

var cinema = hd // here struct is copied to cinema

// if struct is constant then u cant change it's property
cinema.height = 2048

print("hd height \(hd.height)","cinema height \(cinema.height)")

// enumaration are values 
enum Compass {
  case north
  case east
  case west 
  case south

  mutating func moveToNorth() {
    self = .north
  }
}

let directionOne = Compass.east
var directionTwo = directionOne // here value get copied
directionTwo.moveToNorth()
print("dir-1 \(directionOne)","dir-2 \(directionTwo)")

// classes are reference type means the one/more  variable or constant holds the reference to the class instance behind the sense. instead of storing instance it self it stores the refernce like memory location so constant value instance can also mutate it's values 


let tenEighty = VideoMode()
let anotherTenEighty = tenEighty // here  both constnats are reference to same instance of class


// Identity Operator
// Equal reference (===)
// Not Equal (!==)

if tenEighty === anotherTenEighty {
  print("both instances are equal")
}



