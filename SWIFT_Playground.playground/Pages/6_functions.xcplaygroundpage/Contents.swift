//: [Previous](@previous)

import Foundation

func greet(person: String): String {
    let greeting: String = "Hello, \(person) !"
    return greeting
}

print(greet(person: "Anna"))

func greetAgain(person: String) -> {
    return "Hello again, " + person + "!"
}

// functions without parameters
func sayhelloWorld() -> String {
    return "hello, world"
}

// functions with multiple parameters
func greet(person: String, alreadyGreeted: Bool) -> {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

// functions without return values
func greet(person: String) {
    print("hello, \(person) !")
}

// return value of a function can be ignored when it's called
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

// functions with multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// optional tuple return types
func minMax1(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil} // return nil if the array is empty
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// function argument labels and parameter names
func someFunction(firstParametername: Int, secondParameterName: Int) {
    
}

someFunction(firstParametername: 1, secondParameterName: 2)

// specifying argument labels
func someFunction(argumentLabel parameterName: Int) {
    
}

func greet1(person: String, from homeTown: String) -> String {
    return "Hello, \(person)! glad you could visit from \(homeTown)"
}
print(greet1(person: "Bill", from: "Cupertino"))

// omitting argument labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    
}
someFunction(1, secondParameterName: 2) // if a parameter has an argument label, the argument must be labeled when you call the function

// default parameter values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    
}
someFunction(parameterWithoutDefault: 1)

// variadic parameters
/**
 A variadic parameter accepts zero or more values of a specified type
 You can use a variadic parameter to speicify that the parameter can be passed a varying number of input values when the function is called.
 Write a variadic parameters by inserting threed perido characters (...) after the parameters's type name
 */

func arithmaticMean(_ numbers: Double...) -> Double {
    var tobal: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

// function type
var mathFunction: (String) -> String = greet()
