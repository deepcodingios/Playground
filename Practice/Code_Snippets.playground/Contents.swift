import UIKit
import Foundation
//
////struct Address {
////    var street: String
////}
////
////public class Person {
////    var name: String?
////    public var address: Address?
////}
//
//struct Language {
//    var name: String
//}
//var preferred = Language(name: "Swift")
//let languages = [preferred]
//preferred.name = "Objective-C"
//print(languages[0].name)
//
//class Contact {
//    var address: String?
//    var name: String
//    init?(name: String, address: String? = nil) {
//        guard !name.isEmpty else { return nil }
//        self.name = name
//        self.address = address
//    }
//}
//let contact = Contact(name: "")
//print(contact?.name + "\n" + (contact?.address ?? ""))

struct Coordinate {
    var x: Float
    var y: Float
    let z: Double = 0
}

//let p = Coordinate(x: <#T##Float#>, y: <#T##Float#>)

//let filtered = ["AZ", "CA", "UT"].filter({ (state: String, result: Bool) in
//    //...
//})

// Create Date
//let date = Date()
let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "MMM d, yyyy"

//dateFormatter.calendar = .current
//dateFormatter.locale = .current
//dateFormatter.timeZone = .autoupdatingCurrent
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss VV"
dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

let dateString = "2021-01-14 15:36:54 Etc/GMT"

//let dateFromString = dateFormatter.date(from: dateString)

if let dateFromString = dateFormatter.date(from: dateString) {
    print(dateFromString)   // "2015-08-19 09:00:00 +0000"
    dateFormatter.timeZone = .current
    dateFormatter.dateFormat = "MMM d, yyyy"
    dateFormatter.string(from: dateFromString)  // 19-08-2015 06:00 AM -0300"
}

//dateFormatter.string(from: date)


//let date = dateFormatter.date(from: string)

let array = [1,2,"a","b"] as [Any]

//You create a Swift array with the following code:

let myArray = ["first", "second", "third"]
//Then later, access an element in that array:

let myElement = myArray[0]
//What is the type of myElement?
//Answer:- String

//You create a new Swift dictionary:

let myDictionary = [ "AZ": "Arizona",
                     "CA": "California",
                     "UT": "Utah"]

//Later, you create a new variable by accessing that dictionary using a key that does exist.

var someState = myDictionary["AZ"]
//What's the type of someState?
//Answer:- String?

/* 1. ---------------------------------------------------------------------------------------------------------------*/
//Is this a valid multiline string?

//var henley = """I am the master of my fate
//I am the captain of my soul"""

//var brooke = ""If I should die,
//think only this of me
//There is some corner of a foreign field
//That is forever England."

/*---------------------------------------------------------------------------------------------------------------*/

/*2. ---------------------------------------------------------------------------------------------------------------*/

//Which of these lines make variables?

//var score: Double = 10
//
//var isActive: Bool = 0

//Below creates a Set?
//var readings = Set([true, false, true, true])
//let earthquakeStrengths = Set(1, 1, 2, 2)

//Will this create a set of two items?
let averageHeights = Set([1.71, 1.72, 1.73])

class Dog {
    var name: String!
    var breed: String!
}

var classA = Dog()

struct Mouse {
    var name: String
    var breed: String
}

//class Cat {
//    let name: String
//    var breed: String
//}

//class Pigeon {
//    var name: String
//    var breed: String
//}

//struct Mouse {
//    var name: String
//    var breed: String
//}

//class Pigeon {
//    let name: String?
//    let breed: String?
//}
//
//class Person{
//var name:String
//var age:Int
//}
//
//class Person{
//let name:String
//let age:Int
//}
//
//struct Person{
//let name:String
//let age:Int
//}
//
//struct Person{
//var name:String
//var age:Int
//}

/*---------------------------------------------------------------------------------------------------------------*/

/*3. ---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*4. ---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*5. ---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*6. ---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*7. ---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*Functions*/

/*

 -->
 -->
 
*/

/*---------------------------------------------------------------------------------------------------------------*/
/* Write a function that filter out Strings from an Array */

//filterArray([1, 2, "a", "b"]) ➞ [1, 2]
//filterArray([1, 2, "aasf", "1", "123", 123]) ➞ [1, 2, 123]

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*Write a function that returns the index position of a string inside an array*/

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0 ..< array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}

let jamesPosition = position(of: "James", in: items)

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/

/*Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num up to length.*/
///
///arrayOfMultiples(7, 5) ➞ [7, 14, 21, 28, 35]
///arrayOfMultiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]
///arrayOfMultiples(1, 0)

func arrayOfMutiples(number:Int, count:Int) -> [Int]{
    
    var arrayWithMultiples = [Int]()
    
    var multipliedNumber:Int
    
    for i in 1 ... count {
        multipliedNumber = number * i
        arrayWithMultiples.append(multipliedNumber)
    }
    return arrayWithMultiples
}

let output = arrayOfMutiples(number: 1, count: 0)

print(output)

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

//let mutableArray: NSMutableArray = [String]

/*---------------------------------------------------------------------------------------------------------------*/

/*Start of Function*/

///Given an array of integers, return indices of the two numbers such that they add up to a specific target.

///You may assume that each input would have exactly one solution, and you may not use the same element twice.

/*
Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
 
 */

func getIndexesFromArray(numberArray:[Int], sumOfNumbers:Int) -> [Int]{
    
    var outputArray = [] as [Int]
    
    outerLoop: for index in 0...numberArray.count-1 {
        
        let currentNumer = numberArray[index]
        
        for nextIndex in 0...numberArray.count-1 {
            
            if nextIndex == index {
                continue
            }
            
            let subsequentNumber = numberArray[nextIndex]
            
            if currentNumer+subsequentNumber == sumOfNumbers{
                outputArray.append(index)
                outputArray.append(nextIndex)
                break outerLoop
            }
        }
    }
    
    return outputArray
}

let arrayWithIndices = getIndexesFromArray(numberArray: [2,1,1,3], sumOfNumbers: 4)
//print("Array with Indexes is",arrayWithIndices)

///[2,5,5,11], 10;
/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/
 
/*---------------------------------------------------------------------------------------------------------------*/
/*Start of Function*/

//Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

//Given nums = [1,1,2],

//Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

//It doesn't matter what you leave beyond the returned length.

//func removeDuplicates(_ nums: inout [Int]) -> Int {
//
//    let count = nums.count
//
//    outerLoop: for index in 0...count {
//
//        print("Current Index is",index)
//        if index >= nums.count{
//            break
//        }
//
//        let currentNumber = nums[index]
//
//        for nextIndex in 0...count {
//
//            print("NextIndex is",nextIndex)
//
//            if nextIndex >= nums.count{
//                break
//            }
//
//            let nextNumber = nums[nextIndex]
//
//            if currentNumber == nextNumber {
//                print(" Duplicate Array Count Count before is",nums.count,nums)
////                if index != nextIndex {
////                    nums.remove(at: nextIndex)
////                }
//                nums.remove(at: nextIndex)
//                print("Duplicate Array Count After is",nums.count,nums)
//            }
//        }
//    }
//    print(nums)
//    return nums.count
//}

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    let count = nums.count
    
    var duplicateArray = [Any]()
    
    outerLoop: for currentIndex in 0...count {
        
//        print("Current Index is",currentIndex)
        
        let currentNumber = nums[currentIndex]
        
        duplicateArray.append(currentNumber)
        
        for nextIndex in currentIndex+1...count {
            
            if nextIndex >= count {
//                print("nextIndex and count is",nextIndex,count)
                break outerLoop
            }
            
//            print("NextIndex is",nextIndex)
            
            let nextNumber = nums[nextIndex]
            
            if currentNumber == nextNumber {
//                print(" Duplicate Array Count before is",duplicateArray.count,duplicateArray)
                continue
            }else{
                
                if duplicateArray.contains(where: { $0 as! Int == nextNumber}) {
                    continue
                }else{
                    
                    duplicateArray.append(nextNumber)
//                    print(" Duplicate Array Count after appending is",duplicateArray.count,duplicateArray)
                    
                    if nextIndex == count {
                        break outerLoop
                    }
                }
            }
        }
    }
    
//    nums = duplicateArray
    print(nums)
    print(duplicateArray)
    return duplicateArray.count
}

var array1 = [1,1,2]
//var array1 = [0,0,0,0,0]
//    var array1 = [1,1,2,2,2,3,3,4,4,5,5,6]
//var array1 = [3,4,1,2,2,3,3,4,4,5,5,6]
let finalCount = removeDuplicates(&array1)
print("Final Count is ",finalCount)


//[3,4,1,2,2,3,3,4,4,5,5,6]
/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
/*Start of Function*/

/*Sample Rest API for fetching JSON Data*/

//https://jsonplaceholder.typicode.com/todos/1
//https://api.github.com/users/hadley/orgs

struct Response: Codable { // or Decodable
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

//if let url = URL(string: "https://api.myjson.com/bins/yfua8") {
//    URLSession.shared.dataTask(with: url) { data, response, error in
//        if let data = data {
//            if let jsonString = String(data: data, encoding: .utf8) {
//                print(jsonString)
//            }
//        }
//    }.resume()
//}

if let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") {
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            do {
                let res = try JSONDecoder().decode(Response.self, from: data)
                print(res.title,res.completed)
            } catch let error {
                print(error)
            }
        }
    }.resume()
}


/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
/*Start of Function*/

var view1 = UIView()
view1.alpha = 0.5

let view2 = UIView()
view2.alpha = 0.5

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*
 
 What are the various ways to unwrap an optional? How do they rate in terms of safety?
 
 var x : String? = "Test"
 
 Forced unwrapping — unsafe.
 let a: String = x!
 
 Implicitly unwrapped variable declaration — unsafe in many cases.
 var a = x!

 Optional binding — safe.
 if let a = x {
 print("x was successfully unwrapped and is = \(a)")
 }

 Optional chaining — safe.
 let a = x?.count

 Nil coalescing operator — safe.
 let a = x ?? ""
 
 Guard statement — safe.
 guard let a = x else {
 return
 }

 Optional pattern — safe.
 if case let a? = x {
 print(a)
 }
 
 */

/*
var thing = "cars"

let closure = { [thing] in
    print("I love \(thing)")
}

thing = "airplanes"

closure()
 
 
 var thing = "cars"
 
 let closure = {
 print("I love \(thing)")
 }
 
 thing = "airplanes"
 
 closure() // Prints: "I love airplanes"

 
*/

/*---------------------------------------------------------------------------------------------------------------*/
/*Start of Function*/

/*Write a function that returns an index which contains an unpaired no from a given Array.
 
 Ex;- [9,3,9,4,5,3,4], Answer is 4
 
*/

func getIndexOfUnpairedNo(array:Array<Int>) -> Int{
    
    var unPairedNumber:Int = 0
    
    for index in 0...array.count-1 {
        
        let currentNumber = array[index]
        
        print("CurrentNumber is \(currentNumber)")
        
        var temporaryArray = array
        
        temporaryArray.remove(at: index)
        print("Temporary Array is \(temporaryArray)")
        
        for _ in 0...temporaryArray.count-1 {
            
            if temporaryArray.contains(currentNumber){
                break
            }else{
                unPairedNumber = currentNumber
                return unPairedNumber
            }
        }
    }
    
    return unPairedNumber
}

let unpairedNumber = getIndexOfUnpairedNo(array: [3,0,9,4,7,1,7,3,4])

print("UnpairedNumber is \(unpairedNumber)")

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/

/*
 
 let number = array[index]
 
 print("Reference No is %d",number)
 
 for pairedIndex in 0...duplicateArray.count{
 
 let pairedNumber = duplicateArray[pairedIndex]
 
 print("PairedIndex is %d",pairedIndex)
 print("PairedNumber is %d",pairedNumber)
 
 if (number == pairedNumber){
 if pairedIndex < duplicateArray.count {
 print("Removing Number is \(pairedNumber) and Removing Index is \(pairedIndex)")
 duplicateArray.remove(at: pairedIndex)
 print("Duplicate Araay is %@",duplicateArray)
 break
 }else{
 continue
 }
 }else{
 print("Continue Execution")
 continue
 }
 }
 
 */

/*End of Function*/
/*---------------------------------------------------------------------------------------------------------------*/
