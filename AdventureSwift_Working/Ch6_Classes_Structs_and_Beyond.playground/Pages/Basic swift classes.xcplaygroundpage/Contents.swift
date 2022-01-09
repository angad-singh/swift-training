/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Even though swift has an entire library of built-in classes and structs for us to use in our applications, we’ll still need to know how to create our own. These data structures can have properties, methods, initializers, and in the case of classes can have their own subclasses.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Declare instance properties with or without values
 + Define designated and convenience initializers
 + Understand reference type behavior
 
 [Next Topic](@next)
 
 */
/// Value Data type -> passed around as a copy, a new copy gets created and passed in to the function. If this copy is changed, nothing happens to the original copy [Structs, ints, strings, etc.]
/// Reference Data type -> passed around as a reference. If this reference is mutated then the original object WILL be changed [Classes, closures, etc.]

// Declaring a new class
class Adventurer {
    // name is a variable here
    var name: String
    // maxHealth is a constant
    let maxHealth: Int
    
    // specialMove is optional and might not be initialized
    var specialMove: String?
    
    // designated init
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
    }
    
    // basically these are overloaded init functions
    // if you want to do more with the initializer then you can call convenience init and do more with it.
    // You still do need to delegate to designated init tho
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    
    func printStats() {
        print("Character: \(self.name), Max Health: \(self.maxHealth)")
    }
}

var player1: Adventurer = Adventurer(name: "Angad", maxHP: 1000)
var player2 = Adventurer(name: "Harrison")
// The below example is to show reference effect
var defaultPlayer: Adventurer = player2
defaultPlayer.name = "BLAHHHHH"

player1.printStats()
player2.printStats()


