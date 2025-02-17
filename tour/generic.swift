// Write a name inside angle brackets to make a generic function or type.

func makeArray<Item>(repeating number:Item,count:Int) -> [Item] {
  var arrays:[Item] = []
  for turn in 0..<count {
    arrays.append(number)
  }
  return arrays
}


let arrays = makeArray(repeating:"Hello",count:10)
print(arrays)