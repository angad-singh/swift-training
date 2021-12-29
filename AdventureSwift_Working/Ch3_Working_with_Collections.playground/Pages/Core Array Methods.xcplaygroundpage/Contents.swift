/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to dynamically modify them. Like `Strings`, `Arrays` come with several handy methods built right in for just that purpose.
 
 ### Objectives
 + Create an array called **characterClasses** and assign it initial values
 + Use `append` and += operator to add items
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a jagged array called **skillTree** that stores arrays as its values
 + Use chained **subscript syntax** to access a value in **skillTree**
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Changing & appending items
var characterClasses: [String] = ["Human", "Elves", "Orcs"]
characterClasses.append("Knights")
characterClasses += ["Merlin", "Goblins"]
characterClasses.count

//Inserting and removing items
characterClasses.insert("Demons", at: characterClasses.count)
characterClasses.remove(at: 2)
characterClasses

// Ordering and querying values

// characterClasses.reverse() will mutate the array in place, to make a copy use reversed(). Same goes for sort() and sorted()
var reverseClasses: [String] = characterClasses.reversed()
var sortedClasses: [String] = characterClasses.sorted()

characterClasses.contains("human") // false
characterClasses.contains("Orcs")  // false
characterClasses.contains("Human") // true

characterClasses



// 2D arrays and subscripts

// [[String]] means that this is an array of arrays (2D array) whose elements are of type String
var skillTree: [[String]] = [
    ["Attack+", "Barrage", "Heavy hitter"],
    ["Guard+", "Evasion", "Run"],
    ["Test value"]
]

skillTree[2][0]
skillTree[1][2]
skillTree[0][1]

skillTree[0].joined(separator: " ")
skillTree.randomElement()?.randomElement()
