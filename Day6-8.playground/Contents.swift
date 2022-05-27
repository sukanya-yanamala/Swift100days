import UIKit

//Closures

let addNumbers: (Int, Int) -> Int = { (number1, number2) in
return number1 + number2
}
addNumbers(7,4)

//
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Reading")
print(message)

//Closure as parameter

func grabLunch(search: ()->()) {
  print("Let's go out for lunch")

  
  search()
}

grabLunch(search: {
   print("get pizza")
})

//trailing closure

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}


//Day7
//closure example using two parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}


//closures returned from a function

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("London")

//capturing values

func journey() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result1 = travel()
result1("London")

//Day8
//Structs

struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

//computed proprties

struct Sport1 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Structs

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 10
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//Properties and methods of strings

let string = "Do or do not."
print(string.count)
print(string.hasPrefix("Do"))
print(string.sorted())
print(string.uppercased())

//Properties and methods of arrays

var toys = ["Barbie"]
print(toys.count)
toys.append("Doll")
toys.firstIndex(of: "Doll")

//Initializers
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Sukanya"

//Referring to the current instance
struct Person2 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
   lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var aa = Person(name: "Aa")
aa.familyTree

//Static properties and methods

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let aaa = Student(name: "Aa")
let bbb = Student(name: "Bbb")
let vv = Student(name: "Vv")
print(Student.classSize)

//Access control
struct Person4 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

