/*:
 # Type Conversions
 ---
 
 ## Topic Essentials
 Numeric values can be converted to other types using Int, Double, or Float class properties or with explicit syntax. Be aware that in some cases you will need to specify the result type if you want something specific. In other words, the compiler is very smart and will deliver the correct result type, but that might not be the type you want.
 
 ### Objectives
 + Understand explicit conversion and its syntax
 + Convert a Double to an Int and String respectively
 + Concatenate string literals and explicitly casted variables
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
*/
// Test variables
var  currentGold_Double: Double = 5.832

// Explicit conversions

// You are converting types by adding the final type you want before the var and wrapping it in parenthesis. Kinda like how they do it in C++
// It also isn't rounding the value here, it simply chops off the decimal value (.832 in this case) and assigns the decimal to the var (5 in this case)
var currentGold_Integer: Int = Int(currentGold_Double) // currentGold_Integer is 5
var currentGold_String: String = String(currentGold_Double) // "5.832"


// Inferred conversion with operators
var bankDeposit = 5 + 37.89 // 42.89, the compiler converted 5 to float and added that together

// Why doesn't this work but it works when I add int and float literal
// var bankDeposit_explicit = currentGold_Double + currentGold_Integer
var bankDeposit_explicit = currentGold_Double + Double(currentGold_Integer)

var bankDeposit_Integer: Int = Int(5 + 37.89) // 42
var bankDeposit_String: String = String(5 + 37.89)
