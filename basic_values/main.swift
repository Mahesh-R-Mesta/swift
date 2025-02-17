let integer:Int = 23 // platfrom specific size (64/32) bit
let int8:Int8 = 123 
let int16:Int16 = 123 
let int32:Int32 = 123 
let int64:Int64 = 123 

//unsign int
let unsignInt8:UInt8 = 234 // 8 bit size: no sign (-)
let unsignInt16:UInt16 = 234
let unsignInt32:UInt32 = 234
let unsignInt64:UInt64 = 234

// to make reading easy '_' can be used and it will be ignored by compiler ex:
let oneMillion = 1_000_000  // same 1000000 (Int)
let decimal = 1_000.000_000_1 // 1000.0000001 (Float)


// we can get max or min number from int typrs
let max8 = UInt8.max // 255
let min8 = UInt8.min // 0


//--------------- integer conversion ------------

let fiveThousand:UInt16 = 5_000
let one:UInt8 = 1
// to add both conversion required
let fiveThousandAndOne = fiveThousand + UInt16(one)
// here fiveThousandAndOne is UInt16

let piValue = 3 // infered as Integer on compile 
let piDecimal = 0.14159 // infered as Double 
let piExactValue = Double(piValue) + piDecimal //3.141
let directPi = 3 + 0.14159 // no need coversion

//similar visa-versa
let piInt = Int(directPi) // infered as In
//------------------------------------------

//Type alias: giving alternative name to existing type
typealias AudioSample = UInt16
AudioSample.max // same as UInt16.max
//Bool
let state = false
let status:Bool = true

//------tuple-------- 
//create 
let httpError = (404,"Not found")
//de-construct
let (statusCode,message) = httpError
print("statusCode: \(statusCode) msg: \(message)")
print("statusCode: \(httpError.0) msg: \(httpError.1)")
//named tuple
let response = (message:"success",statusCode:200)
print("msg: \(response.message) statCode:\(response.statusCode)")







