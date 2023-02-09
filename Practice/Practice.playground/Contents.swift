import UIKit

var greeting = "Hello, playground"

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

