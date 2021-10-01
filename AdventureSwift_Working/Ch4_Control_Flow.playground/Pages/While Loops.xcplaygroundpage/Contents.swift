/*:
 # WHILE Loops
 ---
 
 ## Topic Essentials
 While loops are exactly what they sound like. While some defined condition is true, do something. There are two types of while loops - traditional while loops check their condition at the beginning of each loop, while repeat-while loops check their condition at the end.
 
 ### Objectives
 + Create a variable called **playerHealth** and assign it a value of 5
 + Use a standard while loop to print out **playerHealth** until it is at 0
 + Use a repeat-while loop to print out **playerHealth** until it is at 0 and see the different behavior
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// While loop
var playerHealth: Int = 5

//while playerHealth > 0 {
////    need to manually decrease the playerHealth var here
////    Here we are decreasing the value first and then evaluating the code.
//    playerHealth -= 1
//    print("Still Kicking!")
//}

// Repeat-while loop
// Similar to above example but the value is checked after the code is executed
repeat {
    playerHealth -= 1
    print("HP at \(playerHealth)")
} while playerHealth > 0
// The above code will print the health at 4 to begin with all the way upto 0.
// This happens because the value is decreased first (5 -> 4), then printed,
// then the check happens (4 > 0) and it repeats.
// It will keep going on until the value has been decreased to 1, the code starts at the repeat keyword
// value is decreased ( 1 -> 0), the value is printed, it is then checked (0 > 0)
// this time the condition is false and the execution stops
