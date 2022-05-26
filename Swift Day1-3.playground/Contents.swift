import Foundation

//Strings, int

let name: String = "Sukanya"
let lastname = "Yanamala"
print(name)

var Age: Int = 25
print(Age)

//multi-line strings

var str = """
my name \
is \
Sukanya
"""
print(str)

// string interpolation
let name1 = name + " "
let age1 = 25
let name2 = "My name is: \(name1) and my age is\(age1)"
print(name2)

//Day2
//Arrays

var myFirstArray:[Int] = [1,2,3,4,5,6,1,3,6,4]
myFirstArray.append(11)
print(myFirstArray)
print(myFirstArray[4])
myFirstArray.remove(at: 6)
print(myFirstArray)


//sets
let colors = Set(["red", "blue", "green", "pink", "blue", "green",])
print(colors)

//Tuples

var studentRollno : [Int: String] = [1: "Aaa",
                        2: "Bbb",
                        3: "Ccc",
                        4: "Ddd"]

print(studentRollno[4]!)


//
let dictionary1: [String: Int] = ["myAge": 26, "currentYear": 2022]
print(dictionary1["myAge"])
let dictionary2: Dictionary<Int, Int> = [404: 300, 500: 102]
var dictionary3 = [String: String]() // Dictionary<String: String>()
dictionary3["name"] = "Suuu"
dictionary3["lastname"] = "Yaa"
print(dictionary3)



//Enumerations
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
let singing = Activity.singing(volume: 4)
print(talking)
print(singing)


//Day3

//Arithmetic Operators

let assignment1 = 40
let assignment2 = 50
let assignment3 = 20

let total = assignment1 + assignment2 + assignment3
print(total)
let dif = assignment2 - assignment3
print(dif)
let eql = assignment3 == assignment1
let grt = assignment3 >= assignment1
print(eql)
print(grt)
//
var score = 968
score += 6
print(score)

//Condition

let number = 2
let number2 = 7

if number > 1 && number > 1 {
    print("Number is big.")
}

else if (number < 6) {
    print("Number is negative")
}

else {
    print("Number is 2")
}


//

let age3 = 52
let age4 = 30

if age3 == age4 {
    print("ages are the same")
} else {
    print("ages are diffrent")
}


//Switch

let dayOfWeek = 2

switch dayOfWeek {
  case 1:
    print("Sunday")
        
  case 2:
    print("Monday")
        
  case 3:
    print("Tuesday")
        
  case 4:
    print("Wednesday")
        
  case 5:
    print("Thursday")
        
  case 6:
    print("Friday")
        
  case 7:
    print("Saturday")
        
  default:
    print("Invalid day")
}



//

let ageGroup = 20

switch ageGroup {
  case 0...16:
    print("Child")

  case 17...30:
    print("Young Adults")

  case 31...45:
    print("Middle-aged Adults")

  default:
    print("Old-aged Adults")
}
