/*:
 # Swift Dictionaries
 ---
 
 ## Topic Essentials
 Like arrays, dictionaries are collection types, but instead of holding single values accessed by indexes, they hold **key-value** pairs. All keys need to be of the same type, and the same goes for values. It's important to know that dictionary items are **unordered**, and their values are accessed with their associated keys.
 
 ### Objectives
 + Understand basic dictionary syntax
 + Create a dictionary called **blacksmithShop** and fill it with a few items
 + Access and udpate key-value pairs using subscript
 + Access all the keys and values of **blacksmithShopItems**
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating dictionaries
var emptyDictionary: [String: Int] = [:]

var blackSmithShop: [String: Int] = ["axe": 3, "shield": 5]


// Accessing and modifying values

// The values returned could be optional. We will cover this in later modules
blackSmithShop["axe"]
blackSmithShop["axe"] = 9

// Updating a non-existent item in the dictionary will add that key-val pair to it
blackSmithShop["sword"] = 1000

// All keys and values


print(blackSmithShop)

// casting the values I guess
// Yeah we are casting the values because `.keys` and `.values` methods do not
// return array right off the bat, we need to cast the return value to an array
[String](blackSmithShop.keys)
[Int](blackSmithShop.values)
var val: [Int] = [Int](blackSmithShop.values)

var Darray: [[String]] = [
["hello", "hi", "bonjour"],
["blah", "yeah"]
]

var anotherDictionary: [String: Int] = ["hello": 3, "hi": 5]
[String](anotherDictionary.keys)
