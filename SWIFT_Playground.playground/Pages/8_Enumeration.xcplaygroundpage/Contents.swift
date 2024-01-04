//: [Previous](@previous)

import Foundation

// enum
enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

// matching enumeration values with switch statement
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north"')
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

// iteratable enumeration cases
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}

// implicitly assigned raw values
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, neptune
}

let earthsOrder = Planet.earth.rawValue
print(earthsOrder)
