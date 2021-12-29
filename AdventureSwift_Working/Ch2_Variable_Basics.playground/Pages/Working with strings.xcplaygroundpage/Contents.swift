/*:
 # Working with Strings
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll be using on a regular basis, which include `contains`, `append`, `insert`, `remove`, and `split`. Refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Retrieve state information about a string using `count` and `isEmpty`
 + Use each of the mentioned class methods to alter the starting string
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Test variable
var dialogue: String = "the Innkeeper's Haven"

// String data
dialogue.count
dialogue.isEmpty
dialogue.contains("H")

// Append and Insert

// append modified the dialogue, didn't return a new modified object
dialogue.append(contentsOf: ", weary travellers!")

// Remove and Split
dialogue.removeLast()
dialogue.removeFirst()

//dialogue.removeAll()

print(dialogue.split(separator: ","))

print(dialogue)
dialogue.append("!")
print(dialogue)
dialogue = "t" + dialogue
print(dialogue)
