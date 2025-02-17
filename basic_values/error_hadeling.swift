enum PrintError:Error {
  case noPaper
  case noConnection
}


func throwsError() throws -> Bool {
  // error to throw
  throw PrintError.noPaper
}

// error is handled outside of calling function with do catch

do { 
  try throwsError()
} catch {
  print(error)
}

do {
  try throwsError()
} catch PrintError.noConnection {
  print("error")
} catch {
  print("error")
}
// u can add try? to get value if no error if error optional will be nil

let optionalResult = try? throwsError() 
