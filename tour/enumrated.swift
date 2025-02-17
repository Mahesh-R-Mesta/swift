// enumarated class with rawValue as Integer type

enum Rank: Int {
  case ace = 1 //rawValues: 1
  case two,three,four,five,six,seven, eighthOne //rawValues: 2,3,4,5,6,7,8
  case king,queen,jack //rawValues: 9,10,11
  
  func description() -> String { //conversion 
    switch self {
      case .ace:
        return "ACE"
      case .king:
        return "King"
      case .queen:
        return "Queen"
      case .jack:
        return "Jack"
      default:
      return String(self.rawValue)// positional number
    }
  }
}

let ace = Rank.ace
print(ace.description()) // ACE
print(ace == Rank.ace) // true
print(Rank.two.description()) // 2
print(Rank.eighthOne.description()) // 8
print(Rank.king.description()) //King


// we can select Rank by rawValue

if let rank = Rank(rawValue: 10) {
  print("Rank rawValue 10 is -> \(rank.description())")
}

//enumarated type with no rawValue type

enum OrderStatus {
  case accepted,confirmed,completed,cancelled

  func typeValue()->String {
    switch self {
      case .accepted:
      return "Accepetd"
      case .confirmed:
      return "Confirmed"
      case .completed:
      return "Completed"
      case .cancelled:
      return "Cancelled"
    }
  }
}

let status = OrderStatus.accepted
print(status.typeValue())

enum Color:String {
  case red,blue,green,orange,yellow,white

  func naming() -> String {
    return String(self.rawValue)
  }
}

let color:Color? = Color(rawValue: "red")
let name = color?.naming()
print(name ?? "nil value") // red
print(color == Color.red) // true
print(Color.blue.naming()) // blue

// enumarated with Values 


enum ServerResponse {
  case success(String,Int,String)
  case failed(String)
}

let successResponse = ServerResponse.success("success",200,"ICC523423")
let failedResponse = ServerResponse.failed("Cannot connect to server")

switch successResponse {
  case let .success(_,statusCode,data):
    print("statusCode \(statusCode) - data \(data)")
  case let .failed(error):
    print("Error \(error)") 
}