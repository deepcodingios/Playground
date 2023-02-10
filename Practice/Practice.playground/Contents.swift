import UIKit

var greeting = "Hello, playground"

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

