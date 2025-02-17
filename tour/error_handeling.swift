// enumarated type must extend Error in order to define custom
enum PrinterError: Error {
  case outOfPaper
  case connectNotFound
  case noData
  case printerNotSupport
}
//Use throw to throw an error and throws to mark a function that can throw an error. If you throw an error in a function, the function returns immediately and the code that called the function handles the error.

func sendData(bytes:[Int],printerName:String) throws -> Bool {
  if printerName == "EPSON-11" {
    throw PrinterError.printerNotSupport
  }
  if(bytes.count == 0) {
    throw PrinterError.noData
  }
  //..
  return true
}
//There are several ways to handle errors. One way is to use do-catch. Inside the do block, you mark code that can throw an error by writing try in front of it. Inside the catch block
func printJob() {
  do  {
  let state = try sendData(bytes:[2,4,5,6,7],printerName: "EPSON-11")
    print("printed?. \(state)")
  } catch {
    print(error)
  }
}

func printJob2() {
  do  {
  let state = try sendData(bytes:[],printerName: "EPSON-12")
    print("printed?. \(state)")
  } catch PrinterError.noData {
    print("Printer has no data")
  } catch {
    print(error)
  }
}

printJob()
printJob2()

// we can use try? if error occured then it will return nil to left operand

let isPrinted:Bool? = try? sendData(bytes:[2,3,5],printerName:"Epos-POS")
print(isPrinted as Any) // true

let isPrinted2:Bool? = try? sendData(bytes:[],printerName:"Epos-POS")
print(isPrinted2 as Any)  // nil
