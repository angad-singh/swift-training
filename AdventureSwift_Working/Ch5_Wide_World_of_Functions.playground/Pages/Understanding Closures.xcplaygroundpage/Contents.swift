/*:
 # Understanding Closures
 ---
 
 ## Topic Essentials
 Like functions, closures are enclosed blocks of functionality but with more concise syntax. In Swift closures act like blocks or lambda expressions in other programming languages, allowing us to pass function-like operations around like variables.
 
 ### Objectives
 + Write an empty closure declaration
 + Create a closure that takes in an `Int` parameter and returns an `Int` value
 + Update the closure to use type inference and shorthand
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Defining closures
/// `() -> ()` looks like a function signature and is being used to declare a closure
/// `{}` is the empty method body, we are assigning the value {} to var closure
var closure: () -> () = {}

// Initializing closures
/// `computeBonusDamage` is a closure and is initialized properly with the correct signature
/// `(Int) -> Int` is the type of the var `computeBonusDamage` which happens to be a closure
/// `(base: Int) -> Int in` is the function signature that we need for the body, it mimics the type of the var (`(Int) -> Int`)
/// `base` is the variable being used in the function that catches the `Int` keyword
/// anything after the `in` keyword will be executed as the function
var computeBonusDamage: (Int) -> Int = { (base: Int) -> Int in
    return base * 4
}

computeBonusDamage(50)


var anotherFunction: (String) -> () = { (str: String) -> () in
    print("I got \(str) as an input")
}

anotherFunction("hello!!!!")

//var anotherFunc2: (String) -> (count: Int, reversed: String) = { (str: String) -> (count: Int, reversed: String) in
//    return (str.count, str.reversed())
//}

var anotherFunc2: (String) -> (Int, String) = { (str: String) -> (Int, String) in
    return (str.count, String(str.reversed()))
}

var result: (count: Int, reversed: String) = anotherFunc2("HELLLOOOOO!!!!")
result.count
result.reversed
