import UIKit

//for with arrays

let cities = ["London", "Reading", "Bristol"]
for city in cities {
    print(city)
}

//

let count = 1...10
for num in count {
    print("Number is \(num)")
// print numbers
}

//while
var number = 5

repeat {
    print(number)
    number += 2
} while number <= 15

repeat {
    print("This is false")
} while false


//break
//Elements
print("Elements are:")
for val in 2...15 {
 
    if val == 11 {
        break
    }
    
    print(val)
}

//
print("Elements are:")
for i in 1...10 {
    if i * 2 == 8 {
        continue
    }

    print(i)
}


//Day 5
//Functions

// function that adds two numbers
func addNumbers(num1: Int, num2: Int) {
  var sum = num1 + num2
  print("Sum: ", sum)
}

// calling function with two values
addNumbers(num1: 5, num2: 2)

//

// function that adds two numbers
func addNum(num1: Int, num2: Int) -> Int {
  var total = num1 + num2
  return total
}
var result = addNumbers(num1: 5, num2: 8)

//

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Joe")



//
func generateGreeting(name age: Int, name: String = "joe") -> String {
    let customGreeting = "My age is \(age) and my name is \(name)"
    return customGreeting
}

let greeting1 = generateGreeting(name: 25, name: "Sukanya")
print(greeting1)

let greeting2 = generateGreeting(name: 25)
print(greeting2)

//

func getSquare(num: Int) -> Int{
   return num * num
 }

for i in 1...6{

  // function call
  var result = getSquare(num: i)
  print("Square of \(i) =",result)
}

