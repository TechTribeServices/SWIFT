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
