//: [Previous](@previous)

import Foundation

// string literals
let someString = "Some string literal value"

// multi-line string literal
let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
"""

// empty string
var emptyString: String = ""
var anotherEmptyString = String()
// these 2 strings are both empty, and are equivalent to each other

// check if string is empty
if emptyString.isEmpty {
    print("Nothing to see here")
}

// string interpolation
let multiplier: Int = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)

// string indices
let greeting: String = "Guten Tag!"
greeting[greeting.startIndex]

greeting[greeting.Index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

// indices
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

// inserting & removing
var welcome: String = "hello"
welcome.insert("!", at: welcome.endIndex) // add a single character

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex)) // add a content of another string

welcome.remove(at: welcome.index(before: welcome.endIndex)) // remove a single character
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
