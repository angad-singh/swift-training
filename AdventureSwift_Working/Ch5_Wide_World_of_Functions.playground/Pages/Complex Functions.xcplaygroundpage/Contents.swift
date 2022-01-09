/*:
 # Complex Functions
 ---
 
 ## Topic Essentials
 Functions in Swift can go from simple to complex very quickly with multiple return types, optionals, and even default values.
 
 ### Objectives
 + Create a new function with an optinal return type
 + Create a an overloaded function with two return values
 + Create another overloaded function with two parameters, both with default values
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Optional return value
func setupArenaMatch() -> Bool? {
    return nil
}


if let initSuccess = setupArenaMatch() {
    print ("Arena setup initialized: \(initSuccess)")
} else {
    print ("Arena setup failed, try again")
}

// Multiple return values
func setupArenaMatch(levelName: String) -> (success: Bool, secretItem: String) {
    print("\(levelName) initialized...")
    return (true, "Mjolnir")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
levelDetails.success
levelDetails.secretItem

// Default values
func setupDefaultMatch (levelName: String = "Fire Marshes", opponents: Int = 3) {
    print("Arena match will take place at \(levelName) between \(opponents) opponents")
}

setupArenaMatch(levelName: "Test level 1")
setupDefaultMatch()
setupDefaultMatch(levelName: "Test level 2")
setupDefaultMatch(opponents: 420)
setupDefaultMatch(levelName: "Test level 3", opponents: 69)
