/*:
 # Type Safety and Inference
 ---
 
 ## Topic Essentials
 Swift is a **type safe** language, meaning that every variable needs to have a specific type and a value that matches. Swift can also infer a variables type from its assigned value, making variable declarations more concise.
 
 ### Objectives
 + Understand how type inference works
 + Declare a variable with a type annotation and no initial value
 + Create a variable with a type annotation and an initial value
 + Create multiple variables of the same type with a single type annotation
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
*/


/*:When we assign a value to a `var`, the compiler is smart enough to figure out it's type. But we won't always have a var with a assigned value. This is where we would need to type annotate things*/
// Type inference
var currentHealth = 90
/*:This tells the compiler that this variable will only hold `String` type values*/
// Type annotation
var characterName: String
characterName = "King Skrull"
/*:Can combine  both the above to be extra explicit but not required*/
// Type annotation + inference
var maxHealth: Int = 100

// Multiple variables - type annotation shorthand
// These 3 things will be declared as ints now
var maxItems, euipmentSlots, currentGold: Int

