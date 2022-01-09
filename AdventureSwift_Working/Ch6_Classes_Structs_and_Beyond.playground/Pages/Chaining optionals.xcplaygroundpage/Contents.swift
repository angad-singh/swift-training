/*:
 # Chaining Optionals
 ---
 
 ## Topic Essentials
 Optional chaining allows you to unwrap an optional type that has optional properties of its own. This is most common in classes or structs that contain optional custom types. It’s handy to think of optional chains in a very literal sense, like a chain link. If all the links are present and strong, the chain continues, but if one link fails, the chain breaks.
 
 ### Objectives
 + 
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test classes
struct Item {
    var description: String
    var previousOwner: Owner?
}

struct Owner {
    var name: String
    
    func returnOwnerInfo() -> String {
        return "\(name) is the current owner!"
    }
}

var questDirectory = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the ultimate boss",
        "Secret": "Win with 50% health left"
    ]
]

// Creating the chain
var rareDagger = Item(description: "A unique dagger of unknown origin", previousOwner: nil)
var daggerOwner = Owner(name: "Angad")
rareDagger.previousOwner = daggerOwner

// Can also use this chain to assign values. this only works if there was a previous value.
// If the value was nil initially then you can't do the below, the chain will break because the current value would be nil
rareDagger.previousOwner?.name = "Ye Ole thief"

if let owner = rareDagger.previousOwner?.name {
    print("This item used to be owned by \(owner)")
} else {
    print("This item's last owner is unknown...")
}

// chaining for the fucntion call on previousOwner object
if let owner = rareDagger.previousOwner?.returnOwnerInfo() {
    print(owner)
} else {
    print("No owner in our record.")
}

if let gemstoneObjective = questDirectory["Fetch Gemstones"]?["Objective"] {
    print(gemstoneObjective)
}
