// a fun
func fetchUserId(from server:String) async -> Int {
  if(server == "primary"){
    return 12
  }
  return 45
}

// actor is similar to class. but they ensures async function can saftly interact with the instance of the same actor at the same time
actor UserDataService {
  var serverName = "primary"
  private var activeUsers:[Int] = []
  
  func fetchUserData() async -> String {
    let userId  = await fetchUserId(from:serverName)
    return "User id is \(userId)"
  }
}

let service = UserDataService()
//When you call a method on an actor or access one of its properties, you mark that code with await to indicate that it might have to wait for other code that’s already running on the actor to finish.
Task {
  print(await service.fetchUserData())
}