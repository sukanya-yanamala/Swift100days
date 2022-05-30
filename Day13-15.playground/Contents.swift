import UIKit

//data types

var age = 25
var longitude = -86.783333
var nothingInBrain = true

//Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

//

var b = 10
b += 10
b -= 10

//

var d = 1.1
var e = 2.2
var f = d + e

//
var name1 = "Sukanya"
var name2 = "Yanamala"
var both = name1 + " and " + name2

//Comparison operators

var a1 = 1.1
var b1 = 2.2
var c1 = a + b

c1 > 3
c1 >= 3
c1 > 4
c1 < 4

//

var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

//
name1 == "Sukanya"
name1 != "Sukanya"

//String Interpolation

var name = "Sukanya"
var age2 = 25
var latitude = 36.166667

"Your name is \(name), your age is \(age2), and your latitude is \(latitude)"

//Arrays

var person = [
                "first": "Sukanya",
                "middle": "Yanamala",
                "last": "Swift",
                "month": "December",
                "website": "dhahhhsdh.com"
            ]

person["middle"]
person["month"]
person["first"]

//loops

for i in 1...5 {
    print("\(i) x 5 is \(i * 5)")
}

//switch case
let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}

//Day 14

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)


//Return values

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

//Optional chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")

//Enums with additional values

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))


//Structs
struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

//classes

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylor1 = Singer(name: "Taylor", age: 25)
taylor1.name
taylor1.age
taylor1.sing()

//Da15

//Properties

struct Person4 {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let yanamala = Person4(clothes: "T-shirts", shoes: "sneakers")
let sukanya = Person4(clothes: "short skirts", shoes: "high heels")
yanamala.describe()
sukanya.describe()

//Property observers

struct Women {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var joe = Women(clothes: "T-shirts")
joe.clothes = "short skirts"

//Static properties and methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)




