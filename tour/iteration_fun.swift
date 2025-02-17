

let numbers:[Int] = [1,2,3,4,5,6,7,8,9,10]

print(numbers.max() as Any)//10

// 
print(numbers.map({number in number*3}))

// input-type & return-type.in -> {}
print(numbers.map({(number:Int) -> Int in
             let r = number*2
             return r}))
print(numbers.sorted {$1 < $0}) // 
print(numbers.sorted {(a:Int,b:Int)->Bool in 
                      return a > b})