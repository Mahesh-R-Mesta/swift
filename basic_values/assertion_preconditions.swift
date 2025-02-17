// assertion: is used in the code to check for invalid conditions in runtime of the code. in development. this assertion cannont be handeled as error so code execution terminates
let age = -1
assert(age >= 0,"Age cannot be negetive")

// custom condition to throw assertion
if(age < 0) {
  assertionFailure("Age cannot be negetive")
}

//preconditions: is used to check condtion during runtime of the code and false condition can break execution of code in both development and production. these can stop further mess in production by terminating app. need to be carefully handeled while working using it

let index = -1 
precondition(index > 0 , "index is negetive")