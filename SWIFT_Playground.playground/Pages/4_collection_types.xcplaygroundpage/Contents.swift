//: [Previous](@previous)

import Foundation

// creating empty array
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3) // add item
someInts = [] // empty array

// creating an array with default values
var threeDouble: [Double] = Array(repeating: 0.0, count: 3)

// creating an array by adding two arrays together
var anotherThreeDouble: [Double] = Array(repeatin: 2.5, count: 3)
var sixDoubles = threeDouble + anotherThreeDouble
print(sixDoubles)

// creating an array with array literal
var shoppingList: [String] = ["Eggs", "Milk"]
print(shoppingList)
shoppingList

// accessing and modifying an array
print("The shopping list contains \(shoppingList.count) items")

// checking if the array is empty
if shoppingList.isEmpty {
    print("Array is empty")
} else {
    print("The shopping list isn't empty")
}

// adding new item to array
shoppingList.append("Flour")

// append array with 1 or more items
shoppingList += ["Baking powder"]
shoppingList += ["Coconut spread", "Cheese", "Butter"]

// accessing array item
var firstItem = shoppingList[0]

// change existing array item by using index
shoppingList[0] = "Six eggs"

shoppingList[4..6] = ["Bananas", "appels"]
print(shoppingList)

// adding item at a specified index
shoppingList.insert("Maple syrup", at: 0)

// remove item from array
let mapleSyrup = shoppingList.remove(at:0)
print(mapleSyrup)

// remove the last item from array
let apples = shoppingList.removeLast()

// iterating over array
for item in shoppingList {
    print(item)
}

// get integer index with item
for (item, index) in shoppingList.enumerated() {
    print("item \(index + 1): item")
}

/*
    SETS
 */

// creating and initializing an empty set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) itmes")

letters.insert("a") // adding an item to collection
letters = [] // empty collection

// creating set collection with array literal
var favoriteGenrs: Set<String> = ["Rock", "Classical", "Hip-hop"]

// accessing and modifying a Set
print("I have \(favoriteGenrs.count) favorite music genrs")

// checking if Set is empty
if favoriteGenrs.isEmpty {
    print("As far as music goes. I'm not picky")
} else {
    print("I have particular music preference")
}

// adding new item to Set
favoriteGenrs.insert("Jazz")

// remove item from Set
if let remveGenre = favoriteGenre.remove("Rock") {
    print("\(removeGenre)? I'm over it")
} else {
    print("I never much care for that")
}

// check Set contains a perticular item
if favoriteGenre.contains("Funk") {
    print("I get up on the good foot")
} else {
    print("It's too funky in here")
}

// iterating over a Set
for gener in favoriteGenre {
    print("\(genre)")
}

// sorted Set
for genre in favoriteGenre{
    print("\(genre)")
}

// fundamental SET operations
let oddDigits: Set<Int>  = [1,3,5,7,9]
let evenDigits: Set<Int> = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set<Int> = [2,3,5,7]

oddDigits.union(evenDigits).sorted() // method to create a new set with all of the values in bot sets
oddDigits.intersection(evenDigits).sorted() // method to create a new set with only the values common to both sets
oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // method to create a new set with values not int he specified set
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // method to create a new set with values in either set, but not both

// Set membership of equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

// dictionary
var namesOfIntegers: [Int: String] = [:] //empty dictionary

namesOfIntegers[16] = "sixteen"

// creating dictionary with dictionary literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// accessing and modifying dictonary
print("The airports dictionary contains \(airpots.count) items")

// checking if dictionary is empty
if airports.isEmpty {
    print("The airports dictionary is empty")
} else {
    print)"The airports dictionary isn't empty"
}

// add new item to dictionary
airports["LHR"] = "London"

// chaing the value of existing item of dictionary
airtports["LHR"] = "London Hearthrow"

// update the value of existing item of dictionary using .updateValue()
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old valus for DUB was \(oldValue)")
}

// retrieve a value from the dictionary using a perticular key
if let airportName: String = airports["DUB"] {
    print("The name of the airports is \(airportName)"
          } else {
        print("The airport isn't in the airports dictionary")
    }
    
// remove item from dictionary
 airports["APL"] = nil
          
// remove a key-value pair from dictionary using removeValue()
          if let removedValue = airports.removeValue(forKey: "DUB") {
        print("The removed airport's name is \(removedValue)")
    } else {
        print("The airports dictionary doesn't contain a value for DUB")
    }

// iterating over dictionary
          for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
    }

// retrieve an iteratable collection of a dictionary's keys or values by accessing it's keyss and values properties
          for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
    }

          for airportName in airports.values {
        print("Airport name: \(airportName)")
    }

