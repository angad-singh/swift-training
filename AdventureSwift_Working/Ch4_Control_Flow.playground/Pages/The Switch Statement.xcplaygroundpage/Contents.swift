/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 A switch statement takes a value and runs it against possible matching patterns, with each possible match having a different block of executable code. While that might sound boring, switch statements in Swift have a lot of features that make them excellent for decision logic.
 
 ### Objectives
 + Use a switch statement to execute different code for different **initial** values
 + Use a switch statement to evaluate multiple variables
 + Use value binding and the `where` keyword to add logic to more cases
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let initial = "H"
let hp = 26
let mp = 24

// Simple switch
// The list of cases should be exhaustive so we need a default case
switch initial {
case "H":
    print("I am guessing Herald?")
case "A":
    print("Maybe Anita?")
default:
    print("I am stumped!")
}

// Complex variations
// If we want to evaluate multiple things at the same time, use parenthesis
// The case statment will compare them similarly, in parenthesis
// Both the values shold match for the code block to be executed.
// The code below will print out "There we go"
switch (mp, hp) {
case (15, 10):
    print("good job")
case (24, 25):
    print("Not quite")
case (24, 26):
    print("There we go")
default:
    print("Hit the default case there buddy")
}

switch (mp, hp) {
case (15, 10):
    print("good job")
case (1...24, 20..<27):
    print("Ranges are the best!")
default:
    print("Hit the default case there buddy")
}

// value-binding
// we can compare the values so far but we can't really access them inside the switch
// statement. When a pattern is true the switch stops executing even if there might
// be true cases below that statement, so be careful in ordering

switch (mp, hp) {
case (15, 10):
    print("good job")
case (1...23, 20..<26):
    print("Ranges are the best!")
//    below we have defined a match pattern using where keyword and defining some
//    variables. These variables are now bound and can be used inside the code block
case (let localMP, let localHP) where localMP+localHP > 20:
    print(localMP, localHP)
default:
    print("Hit the default case there buddy")
}
