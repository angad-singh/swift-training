/*:
 # The IF Statement
 ---
 
 ## Topic Essentials
 If statements are the simplest way to execute conditions in code. An if statement will only execute if some condition is met, or not met, as the case may be.
 
 If statements are best suited to handling decision trees with 3 branching options or less. If you find yourself with an if-else statement extending beyond a few conditions, it’s probably time to consider using a switch statement instead.
 
 ### Objectives
 + Create two variables called **hp** and **maxHP**
 + Write an if-else statement to handle if **hp** drops below **maxHP**
 + Add an else-if statement to handle if **hp** is less than or equal to 50
 + Add a fall-through case to account for all other possible outcomes
 
 [Next Topic](@next)

 */
// Test variables
var hp = 99
var maxHP = 100

// If statement (<, >, <=, >=, !=, ==)
if hp <= 50 {
    print("HP is less than half")
} else if hp <= maxHP {
    print("HP is less than maxHP but greater than 50")
} else {
    print("HP is \(hp)")
}

if hp > 90 || hp <= maxHP {
    print("You are doing just fine!")
}

var val: Int = 101

if val < 100 {
    print("The value \(val) is less than 100")
} else if val >= 100 && val < 200 {
    print("The value \(val) is greater than 100 but less than 200")
} else {
    print("The value \(val) is greater than 200")
}
