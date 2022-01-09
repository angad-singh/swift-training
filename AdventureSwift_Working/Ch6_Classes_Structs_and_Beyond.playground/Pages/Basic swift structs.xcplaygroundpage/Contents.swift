/*:
 # Basic Swift Structs
 ---
 
 ## Topic Essentials
 Swift structures share a very similar syntax and functionality, but they are useful for creating different kinds of instances. While classes are well suited to complex data structures and are passed by reference, structs are passed by value and better suited to creating simple instances that don't need inheritance or reference capabilities.
 
 ### Objectives
 + Declare a basic struct called **Level**
 + Assign a few instance properties
 + Define two custom initializers
 + Add non-mutating and mutating functions
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declaring a new struct
struct Level {
    let levelID: Int
    var levelObjectives: Array<String>
    
    var levelDescription: String {
        return "Level ID: \(self.levelID)"
    }
    
    // The init method has already been setup for us, we don't need to define it ourselves
    // we can override this like below but better to use the default one so that you cut down on code
    // we can also customize this if we want, it is the same syntax like so:
    // You can also have multiple `init` methods just don't need the `convenience` keyword
    init(id: Int, obj: Array<String>) {
        self.levelID = id
        self.levelObjectives = obj
    }
    
    // To define a function that performs some kind of operation is the same syntax is with classes provided that it doesn't attempt to modify any of the structs properties directly.
    func queryObjectives() {
        for obj in levelObjectives {
            print(obj)
        }
    }
    
    // We need this so that we can mutate the copy. Remember structs are passed around using copy and not by reference so we need the mutating keyword
    mutating func completeObjective(index: Int) {
        levelObjectives.remove(at: index)
    }
}

var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the Big Boss"]


var level1 = Level(id: 1, obj: objectives)

// Value types again
// defulatLevel is a copy of level1 and not a reference
// this is a big different between classes and structs - class is passed by reference, structs are passed by copies
var defaultLevel = level1

level1.queryObjectives()
print("")
print("After:")
print("")
level1.completeObjective(index: 0)
level1.queryObjectives()
print("\nObjectives for defaultLevel:\n")
defaultLevel.queryObjectives()
