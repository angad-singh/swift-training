/*:
 # Access Modifiers and Properties
 ---
 
 ## Topic Essentials
 Like most programming languages, swift allows you to limit, or control, how classes, structs, properties, and other entities are accessed based on the module or file they’re in. There are four levels of access in swift, public, internal, file private, and private.
 
 Swift also allows properties to be declared as static, class, read-only and read-write.
 
 ### Objectives
 + Explore the four available access levels
 + Add a read-only (computed) property to Adventurer
 + Add a read-write property to Adventurer
 + Add a static and class property to Adventurer
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
/// Four Access levels
/// public - stuff can be accessed freely from source files and any module that imports the parent module
/// internal - Internal entities can only be accessed by any source file within their defining module
/// file private - can onnly be accessed inside their defining module
/// private - can only be accessed inside their defining scope
/// internal is the default access level in swift

// Test class
class Adventurer {
    var name: String
    var specialMove: String?
    let maxHealth: Int
    
    // Type Properties - Belong to a class rather than a single instance of the class
    // These are called class variables in other languages
    // There are 2 types of properties
    //
    // static - is constant and can not be overridden by any subclass or anything like that
    static var maxActivePlayers: Int = 10
    //
    // If you want to change a type property then we have a different keyword.
    // class - can be changed by the subclass, can only be a computed property
    // remember the `return` keyword in computed properties
    class var credo: String {
        return "Defend the helpless!"
    }
    
    // computed property - the syntax is a mix between a function and a var
    // This is a read only property as you can't change this value, just call it and see the results
    var healthLost: Int {
        return maxHealth - health
    }
    
    // This is a private variable that needs a getter and a setter.
    // This is a read/write computed property
    fileprivate var health: Int
    /// `get` keyword is a built in keyword, when we call `Health` we use this `get` keyword to read the value
    /// `newValue` keyword stores the value we are trying to assign to health
    var Health: Int {
        get { return health}
        set {
            if (newValue <= 100) {
                health = newValue
            }
        }
    }

    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
        self.health = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    
    func printStats() {
        print("Character: \(self.name), Health: \(self.health)/\(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
var player2 = Adventurer(name: "Steven")

player1.printStats()
player2.printStats()
Adventurer.credo
Adventurer.maxActivePlayers
