enum User:Int {
  case employee,employer
}

// structure are similar to classes but in funtion when we pass struct it will be copied but for class referene will be sent

struct IntroCard {
  var name:String
  var type:User
  var number:Int
  var organization = "Google"
  func introduce() ->String {
    return """
    ----------\(organization)-----------
    Name: \(name)
    role: \(type)
    Phone number: \(number)
    ----------------------
    """
  }
}

let introCards:[IntroCard] = [IntroCard(name:"Mahesh",type: .employer,number: 9987765645),
  IntroCard(name:"Abhishek",type: .employee,number: 78798975)]
 // constant let stucture variables cannot be modified
 // for loop implecity declare value as constant
// intro is copied version of introCards
for var intro in introCards { 
  intro.organization = "MICROSOFT"
  print(intro.introduce())
}
// no reference passed so org. name won't get change 
print(introCards)








