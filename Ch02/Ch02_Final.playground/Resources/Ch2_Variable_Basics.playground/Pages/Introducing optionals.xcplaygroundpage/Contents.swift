/*:
 # Introducing Optionals
 ---
 
 ## Topic Essentials
 Optional variables tell the compiler that the variable is either storing a value or storing nothing, which is really useful when you need placeholders for potentially unknown values.
 
 ### Objectives
 + Create two optional variables of different types
 + Use force unwrapping and understand the dangers of using it
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

*/
// Creating optionals
// To create optionals add a question mark after declaring the type. Optional args mean that they can hold nil value
var itemGathered_noValue: String?
var isExchangeable: Bool?

// This doesn't mean that you can't assign a value to it. You can
var itemGathered: String? = "Pickaxe"

print(itemGathered)! // Optional("Pickaxe")
// This means that the string hasn't been unwraped yet and we need to do that before we can safely use it
// There are 2 ways of unwrapping, one of them is listed below

// Forced unwrapping
print(itemGathered!)

// Force unwrapping means that you are telling the compiler to unwrap it without checking and you are sure that the value is not nil
// Doing something like print(isExchangeable!) will crash the compiler
print(isExchangeable!)
// Force unwrapping is kinda whack so don't form a habit of using this
