func fetchUserName(from id:Int) async -> String {
  if(id==1) {
    return "User 1"
  }
  return "User 2"
}

func fetchUserAge(from id:Int) async -> Int {
  if(id == 1) {
    return 26
  }
  return 28
} 

func fetchUserId(from server:String)  async -> Int {
  if(server == "dev") {
    return 12
  } else if(server == "stag") {
    return 23
  } else {
    return 45
  }
}

func fetchUserDetailWait() async  {
  let userName = await fetchUserName(from: 1)
  let userAge = await fetchUserAge(from:1)
  print("name:\(userName) age:\(userAge)")
}

func fetchParalallyUser() async {
  async let nameWait = fetchUserName(from: 1)
  async let ageWait = fetchUserAge(from: 1)
  let data = await "name:\(nameWait) age:\(ageWait)"
  print(data)
} 

// Use Task to call asynchronous functions from synchronous code,
Task {
  await fetchUserDetailWait()
  await fetchParalallyUser()

  // when we have multiple tasks to permore we can taskGroup 
   let userIds = await withTaskGroup(of:Int.self) { (group)->[Int] in 
      var results:[Int] = []
      for environment in ["dev","stag","prod"] {
         group.addTask {
           return await fetchUserId(from: environment)
         }
      }
      for await user in group {
        results.append(user)
      }
    return results
  }
  print(userIds)
}




