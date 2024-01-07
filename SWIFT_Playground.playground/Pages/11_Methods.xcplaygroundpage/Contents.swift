//: [Previous](@previous)

import Foundation

class Counter {
    var count = 0
    func increment() {
        count +=1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()

// self property
/*
 Every instance of a type has a implicit property called self, which exactly equivalent to the instance itself.
 You use the self property to refer to the current instance within its own instance methods
 */
func increment() {
    self.count += 1
}
