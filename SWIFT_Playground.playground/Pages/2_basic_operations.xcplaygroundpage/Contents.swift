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
