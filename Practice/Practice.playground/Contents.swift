import UIKit

var greeting = "Hello, playground"

//Structs - 11 Feb 2023
struct Album{
    let title:String
    let artist: String
    let year:Int
    
    func printSummary(){
        print("\(title) \(year) by \(artist)")
    }
    
}

struct Employee {
    let name: String
    var vacationAllocated = 20
    var vacationTaken = 0
    
    //Getter and Setter
    var vacationRemaining:Int{
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationTaken + newValue
        }
    }
    
    mutating func takeVacation(days:Int){
        if(vacationRemaining > days){
            vacationRemaining -= days
            print("Enjoy your Holidays!")
        }else{
            print("Oops! Can't take Vacation")
        }
    }
}

struct Player{
    let name:String
    let number:Int
    
    init(name:String) {
        
        self.name = name
        number = Int.random(in: 1...100)
    }
}

let player = Player(name: "Sachin")
print(player.number)

var pradeep = Employee(name: "Pradeep",vacationAllocated: 20)

let sahithi = Employee(name: "Sahithi")

pradeep.takeVacation(days: 19)


//CheckPoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]



//Closures - 11 Feb 2023

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

func greetUser() {
    print("Hi there!")
}

let sayHello = {
    
    print("Hi There")
}

sayHello

greetUser()

var greetCopy = greetUser


enum PasswordError:Error{
    case short, obvious
}

enum SquareRootError:Error{
    case outOfBounds,noRoot
}

func checkSquareRoot(number:Int) throws -> String{
    
    if(number < 1 || number > 10000){
        throw SquareRootError.outOfBounds
    }
    
    var startIndex = 1;
    
    var endIndex = number/2;
    
    var answer = 0;
    
    while(startIndex <= endIndex){
        
        var middleIndex = startIndex + ((endIndex - startIndex)/2);
        
        if(number == middleIndex*middleIndex){
            print("SquareRoot is \(middleIndex)")
            return String(middleIndex)
        }
        else if(middleIndex*middleIndex <= number){
            answer = middleIndex
            startIndex = middleIndex + 1;
        }else{
            endIndex = middleIndex - 1;
        }
    }
    
    print("SquareRoot is \(answer)")
    return String(answer);
    
}

do {
    try checkSquareRoot(number: 220)
}
catch{
        print("Error checking Square Root")
}



func checkPassword(_ password:String) throws -> String{
    
    if (password.count < 5){
        throw PasswordError.short
    }
    
    if(password == "12345"){
        throw PasswordError.obvious
    }
    
    if password.count < 8{
        return "OK"
    }else{
        return "Excellent"
    }
}

for i in 1...100{
    
    if i.isMultiple(of: 3){
        print("Fizz")
    }else if i.isMultiple(of: 5){
        print("Buzz")
    }else if (i.isMultiple(of: 3) && i.isMultiple(of: 5)){
        print("Buzz")
    }
    else{
        print(i)
    }
    
}
enum Weather {
    case sun, rain, wind, snow, unknown
}

//Terinary Operator
let hour = 23

let timeCheck = hour < 20 ? "InTime" : "Out Of Time"

let forecast = Weather.sun

switch forecast{
case .sun:
    print("Rain")
    break
case .rain:
    print("Rain")
case .wind:
    print("Wind")
case .snow:
    print("Snow")
case .unknown:
    break
}

//CheckPoint 2

let array = ["Pradeep","Sahithi","Nandhan","Sri","Pradeep"]
print(array.count)
let unique = Set(array)


let userName:String

//Type Inference

let names: Set<Double> = Set([1])
print(names)

//Creating Enums

enum Weekday{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
print(day)

//Creating Set
let people = Set(["Pradeep","Pradeep","pradeep","Sahithi","Nandhan","Apple","Sri","sri"])
print(people.count)

let val = 5.0 + 10

typealias Thing = [String:Any]

var stuff:Thing

print(type(of: stuff))

for i in ["0","1"]{
    print(i)
}

let cities = [10,2,3,5,1,5,3,10]
print(cities.count)
print(cities.contains(5))
print(cities.sorted())
print(cities.reversed())
	

let employee = ["name":"Pradeep","wifeName":"Sahithi","sonName":"Nandhan"]
print(employee["sonName",default: "Unknown"])


let nThings:[Any] = [1,"2","three"]
let oThings = nThings.reduce("") { "\($0)\($1)" }
let bThings = nThings.reduce(""){"\($0)\($1)"}

"t".forEach { (char) in
    print(char)
}

//protocol TUI{
//    func add(x1:)
//}

