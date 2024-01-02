//: [Previous](@previous)

import Foundation

// addition
print(1+2)
// subtraction
print(5-3)
// multiplication
print(2 * 3)
// division
print(10.0 / 2.5)

// string concatanation
"hello " + "world"

// remainder
print(9 % 4)

// compound assignment operators
var a = 1
a += 2
print(a)

// equal operator
1 == 1

// not equal operator
1 != 1

// greater than operator
2 > 1

// les than operator
1 < 2

// greater than or equal to operator
2 >= 1

// less than or equan to operator
1 <= 0

// ternary condition
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// nil-coalescing operator
let defaultColorName: String = "red"
var userDefinedColorName: String? // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

// closed range operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// half-open range operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count: Int = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

// one-sided operator
for name in names[2...] {
    print(name)
}

// logical NOT operator
let allowedEntry: Bool = false
if !allowedEntry {
    print("ACCESS DENIED")
}

// logical AND operator
let enteredDoorCode: Bool = false
let passedRetinaScan: Bool = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENINED")
}

// logical OR operator
let hasDoorKey: Bool = false
let knowsOverridePassword: Bool = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DEINIED")
}

// switch statement
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}


let anotherCharacter: Character = "a"
let message = switch anotherCharacter {
case "a":
    "The first letter of the Latin alphabet"
case "z":
    "The last letter of the Latin alphabet"
default:
    "Some other character"
}


print(message)

// using tuples to test multiple values in same switch statement
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

// continue
let puzzleInput: String = "great minds think alike"
var puzzleOut: String = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOut.append(character)
}
print(puzzleOut)

// checking API availability
if #available(iOS 10, macOS 10.12, *) {
    print("available")
} else {
    print("not available")
}

