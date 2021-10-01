/*:
 # Working with Sets
 ---
 
 ## Topic Essentials
 Sets are a great tool you need to store unique, unorderd values in a collection, as opposed to arrays and dictionaries which can hold duplicates with no issue.
 
 ### Objectives
 + Create a set named **activeQuests** and understand the syntax
 + `insert` and `remove` elements from **activeQuests**
 + Sort **activeQuests** and check if it `contains` a certain value
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating sets
// We need to tell the compiler about the Set type otherwise it would think it is an array
var activeQuests: Set<String> = ["Fetch Gemstones", "Beat the big boss", "The undertaker", "Granny needs firewood"]

// Inserting and removing elements
activeQuests.insert("Only the strong")
activeQuests.remove("The undertaker")
print(activeQuests)

// More common methods
activeQuests.contains("All-4-one")       // False
activeQuests.contains("Fetch Gemstones") // True

activeQuests.count
activeQuests.sorted()

