/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playerStats: [String: Int] = ["health": 95, "mana": 75, "items": 3, "potions": 5]
playerStats["health"] = 100

// if you wanna save the old value then use the following
var oldValue = playerStats.updateValue(100, forKey: "mana")

// can also set the whole var to a new dict


// Caching and removing items
// simple remove
// playerStats["potions"] = nil
var removedValue = playerStats.removeValue(forKey: "potions")

playerStats["items"] = 10

print(playerStats)

// Nested dictionaries

var questDict: [String: [String: String]] = [
    "Fetch Gemstones": [
        "Objective": "Collect all gemstones",
        "Secret": "Finish under 5 minutes"
    ],
    "Defeat big boss": [
        "Objective": "Win fight with big boss",
        "Secret": "Win fight with at least 80% health"
    ]
]
print(questDict)

// the ? sign will break the chain if the value is nil. Like using &. in ruby method chains
var gemstoneObj = questDict["Fetch Gemstones"]?["Objective"]
var bossSecret = questDict["Defeat big boss"]?["Secret"]
