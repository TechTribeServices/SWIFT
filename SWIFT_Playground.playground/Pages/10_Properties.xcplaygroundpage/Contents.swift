//: [Previous](@previous)

import Foundation

// stored properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

// lazy stored properties
// a lazy stored properties whose initial value isn't calculated until the first time it's used
class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}

let manager = DataManager()
manager.data.append("some data")
manager.data.append("some more data")
