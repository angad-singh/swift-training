/*:
 # Core Set Methods
 ---
 
 ## Topic Essentials
 Because sets only store unique values, there are a number of useful operations you can perform on them without having to reinvent the sorting/filtering wheel. These include the `intersection` and difference of set values, as well as `union` and `subtraction`. 
 
 ### Objectives
 + Copy and paste the **allQuests** set from the previous page
 + Create a new set called **completedQuests** and assign it a subset of quests from **allQuests**
 + Try out the different operations the `Set` class can perform
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var allQuests: Set<String> = ["Fetch Gemstones", "Big Boss", "The undertaker", "Granny needs firewood", "Only the strong"]

var completedQuests: Set<String> = ["Big Boss", "All-4-one", "The Hereafter"]


// Set operations
var commonQuests: Set<String> = allQuests.intersection(completedQuests)
var differenetQuests = allQuests.symmetricDifference(completedQuests)
var blah = allQuests.union(completedQuests)

var glah: Set<String> = allQuests.subtracting(completedQuests)
print(allQuests)

// form<Function> counterparts of above thing can be used to modify the variable I think

