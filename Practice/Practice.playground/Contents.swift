import UIKit

var greeting = "Hello, playground"

//Optionals - 15 Feb 2023

let nameArray = ["Pradeep","Sahithi"]

let chosen = nameArray.randomElement()?.uppercased()

func square(number:Int) -> Int{
    number * number
}

var no:Int?
square(number: no ?? 1)

var myVar: Int? = 3

if let unwrapped = myVar{
    print("Run if myVar has a value inside")
}

//guard let unwrapped = myVar else{
//    print("Run if myVar has a value inside")
//    return
//}
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        
        // 1: We *must* exit the function here
        return
    }
    
    // 2: `number` is still available outside of `guard`
        print("\(number) x \(number) is \(number * number)")
}
//Checkpoint 8 - Feb 15 2023

protocol Building{
    var numberOfRooms: Int{get set}
    var cost:Int {get}
    var nameOfAgent:String {get}
    
    func printSalesSummary()
}

struct House:Building{
    var nameOfAgent: String
    var numberOfRooms: Int
    var cost: Int
    
    func printSalesSummary() {
        print("\(numberOfRooms) are present in this building. The total cost of House is \(cost)")
    }
}

struct Office:Building{
    var nameOfAgent: String
    var numberOfRooms: Int
    var cost: Int
    
    func printSalesSummary() {
        print("\(numberOfRooms) are present in this building. The total cost of House is \(cost)")
    }
}

//Extensions - 15 Feb 2023

struct User2:Comparable{
    let name:String
}

let user1 = User2(name: "Pradeep")
let user2 = User2(name: "Sahithi")

func <(lhs:User2,rhs:User2) -> Bool{
    user1.name < user2.name
}

//let user1 = User(name: "Pradeep")
//let user2 = User(name: "Sahithi")
print(user1 < user2)
print(user1 == user2)
print(user1 != user2)

extension Numeric{
    func squared() -> Self{
        self*self
    }
}

let number = 10.5;
print(number.squared())

//Protocols - 14 Feb 2023
protocol Vehicle{
    
    var name:String {get}
    var currentPassengers:Int { get set }
    
    func estimateTime(for distance:Int) -> Int
    func travel(distance:Int)
}

struct Car:Vehicle{
    var name: String
    var currentPassengers: Int
    
    func estimateTime(for distance: Int) -> Int {
        distance/60
    }
    
    func travel(distance: Int) {
        print("I am driving \(distance) Kms")
    }
}

func getTravelEstimates(using vehicles:[Vehicle], distance:Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) km")
    }
}

func commute(distance:Int, using vehicle:Car){
    if vehicle.estimateTime(for: distance) > 100 {
            print("That's too slow! I'll try a different vehicle.")
        } else {
            vehicle.travel(distance: distance)
        }
}

let car = Car(name: "Kia Sonet", currentPassengers: 5)
commute(distance: 100, using: car)

getTravelEstimates(using: [car], distance: 150)

//Checkpoint_7 - 14 Feb 2023
class Animal{
    var legs:Int
    
    init(legs:Int) {
        self.legs = legs
    }
}

class Dog:Animal{
    
    func speak(){
        print("Bow Bow.... Bow.. Bow!!!")
    }
}

class Corgi:Dog{
    override func speak(){
        print("Bowww Bowww.... Bowww.. Bowww!!!")
    }
}
class Poodle:Dog{
    override func speak(){
        print("Bowwwww Bowwwwww.... Bowwwww.. Bowwwww!!!")
    }
}

class Cat:Animal{
    
    //Defining the Initialiser in a subclass
    var isTame:Bool
    init(legs:Int,isTame:Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("Meow Meow.... Meow.. Meow!!!")
    }
}

class Persian:Cat{
    override func speak(){
        print("Crroooooo.....")
    }
}
class Lion:Cat{
    override func speak(){
        print("Grrrrrrr!!!!!")
    }
}


//Demonstration of Deinitialiser of a class - 14 Feb 2023

class User{
    var id:Int
    
    init(id:Int) {
        self.id = id
        print("User \(id) is alive!")
    }
    
    deinit {
        print("\(id) is Dead!")
    }
}

var user = User(id: 2)
//user.id = 3
user = User(id: 4)
print(user.id)

var users = [User]()

for i in 1...3{
    let user = User(id: i)
    print("User \(user.id) is in control!")
    users.append(user);
}

print("Loop is finished")
users.removeAll()
print("Array is clear")



//Classes - 13 Feb 2023
/*
class Vehicle{
    let isElectric:Bool
    
    init(isElectric:Bool) {
        
        self.isElectric = isElectric
    }
}

class Car:Vehicle{
    let isConvertible:Bool
    
    init(isConvertible:Bool,isElectric:Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
    
    func details(){
        if isConvertible {
            print("This is a convertible car")
        }else{
            print("This is not a convertible car")
        }
        
        if isElectric{
            print("This is Electric Car")
        }else{
            print("This is not Electric Car")
        }
        
    }
}

let tesla = Car(isConvertible: false, isElectric: false)
print(tesla.details())
 */

class Company{
    let hours:Int
    
    init(hours:Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer:Company{
    func work(){
        print("I have tons of code to cover")
    }
    
    override func printSummary(){
        
    }
}

final class Manager:Company{
    func work(){
        print("I have tons of meetings to cover")
    }
}

let nandhan = Developer(hours: 10)
print( nandhan.work())
print(nandhan.printSummary())


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

