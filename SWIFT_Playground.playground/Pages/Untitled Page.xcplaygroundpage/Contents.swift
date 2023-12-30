import UIKit

// constants
let constant = 3
// variable
var variable = 4

// type annotation
var red, green, blue: Double

// floating point numbers
var doubleVariable: Double = 0.3422 // 64-bit
var floatVariable: Float = 3.3432 // 32-bit

// type conversion
let three: Int = 3
let pointOneForOneFiveNine: Double = 3.4432
print(Double(three) + pointOneForOneFiveNine)

// boolean
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips")
} else {
    print("Eww, not tasty")
}

// tuples
let http404Error = (404, "Not found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// ignore some values in tuple
let (justTheStatusCode, _) = http404Error
print(justTheStatusCode)

// accessing tuple values by index
print("The status code is \(http404Error.0)")

// naming individual elements of tuple values
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")

// optionals
let possibleNumber = "123"
let convertedNumber: Int? = Int(possibleNumber)
print(convertedNumber)

// nil
var serverResponseCode: Int? = 404 // server respnse code contains an actual Int value of 404
serverResponseCode = nil // server response code now contains no value

var surveyAnswer: String? // servay answer automatically set to nil

// checking for nil validation for optional variables
if convertedNumber != nil {
    print("converted number contains some integer value.")
}

// providing a fall-back value
var name: String? = nil
var greeting = "Hello, " + (name ?? "friend") = "!"
print(greeting)

