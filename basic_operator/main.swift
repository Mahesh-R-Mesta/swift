// unary operator: one target
let a = -4
let ok = !false
// binary opertor: two target
let c =  2 + 5
//ternary operator: three target
let k = ok ? 3 : 6
// assignment operator (=)
let m = 10 
//aithmatic operator +-*/
1+2; 3-1; 5*6; 9/4
//remainder operator %
9%4 // 1
-9%4 // -1
//minus unary operator (-)
let minus = -m
//plus unary Operaor
let plus = +m
// compound operator 
m+=3; m-=1
// logical operator 
 ok && (m==12) //and
 ok || (m==10) //or 
m > k; m < k; m >= k; m <= k

(1, "zebra") < (2, "apple") //true: because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird") //true: because 3 is equal to 3, and "apple" is less than "bird"
("blue", false) < ("purple", true)  //Error because < can't compare Boolean values

//ternary operator
let f = m==12 ? 5 : 2

//nil colascing operator ?? 
// unwraping optional value with default value if optional value is null
let name:String? 
let unknown = "friend"
"Hello \(name ?? unknown)"








