//: [Previous](@previous)

import Foundation

// define structures and classes
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced: Bool = false
    var frameRate: Double = 0.0
    var name: String?
}

// structure and class instances
let someResolution = Resolution() // instance of structure
let someVideoMode = VideoMode() // instance of class

// accessing properties
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

// assign values
someVideoMode.resolution.width = 1280
print("The width of soomeVideoMode is now \(someVideoMode.resolution.width)")

// memberwise initializers for structure types
let vga = Resolution(width: 640, height: 480)
