/*:
 # Unwrapping Optionals
 ---
 
 ## Topic Essentials
 Optional unwrapping uses a variation of the if statement to safely check for nil values without crashing the code. If a value exists it will be stored in a local variable that's only accessible within the body of the if statement.

 
 ### Objectives
 + Use optional binding to unwrap a single optional
 + Unwrap multiple optionals in a single line of code for more compact structure
 + Unwrap nested optional values
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var itemGathered: String?
var isShopOpen: Bool? = true

var blacksmithShop: [String: Int] = ["Bottle": 10, "Shield": 15, "Ocarina": 100]
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

// Optional binding

// This means that assign the value of itemgathered to item and if that is not
// nil then do something in that block. These variables cannot be referenced outside
// of the if block

if let item = itemGathered {
    print("itemGathered has value \(item)")
} else if let shopOpen = isShopOpen {
    print("isShopOpen has value \(shopOpen)")
} else {
    print("None of the optionals have any value")
}


// This is all fine and dandy but if there is a shorthand way of unwrapping multiple
// things at the same time

if let shopOpen = isShopOpen, let searchItem = blacksmithShop["Shield"] {
//    if both of these are not nil then this will print
//    This is sort of like AND operator where both of them need to be present
    print("We are open \(shopOpen) and we have \(searchItem) Shield in stock")
} else {
    //    if neither or one of them is missing then we go into else statement
    print("Sorry the shop is close or the item is not in stock!")
}

// In case you don't remember, the question is trying to unwrap the first level dictionary
// if that exist, look for the next thing in the chain
if let fetchGems = questDirectory["Fetch Gemstones"]?["Objective"] {
    print("The objective of Fetch Gemstones quest is: \(fetchGems)")
} else {
    print("Objective missing")
}

// In case you forgot, the question mark (?) is used to unwrap the first level
// dictionary and then we try to access the second dictionary. Can also use the
// excalmation mark (!) to force unwrap the first one if you are sure it exists
questDirectory["Fetch Gemstones"]?["Test"]

var optional: String? = "present"
var antoherOptional: Int? = 5

if let unwrappedOptional = optional, let unwrappedAnotherOptional = antoherOptional {
    print("The var optional and anotherOptional both are present with values \(unwrappedOptional) & \(unwrappedAnotherOptional)")
} else if let item = optional {
    print("Optional is \(item)")
} else if let item = antoherOptional {
    print("Another Optional is \(item)")
} else {
    print("Both vars are nil!")
}

