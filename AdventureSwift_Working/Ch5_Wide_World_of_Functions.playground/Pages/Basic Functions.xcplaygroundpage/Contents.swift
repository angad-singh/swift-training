/*:
 # Basic Functions
 ---
 
 ## Topic Essentials
 Functions are defined blocks of code that allow us to perform specific tasks in our apps. They can range from simple calculations to taking input parameters and returning specific value types.
 
 ### Objectives
 + Create a simple function that prints out a string
 + Add a return type to the function and pass back a string value
 + Add a function parameter and use it in the print message
 
 [Next Topic](@next)
 
 */
// Basic function
func findNearestAlly() {
    print("Searching...")
}

/// Basic function with a return type. Use `->` to specify return type
func findNearestAlly2() -> String {
    print("Searching...")
    return "Argus"
}

findNearestAlly()

var ally: String = findNearestAlly2()

func findNearestAlly3 (level: Int) -> String {
    print("Searching...")
    return "Found Argus for level \(level)"
}

print(findNearestAlly3(level: 69))

/// Example of a function that returns a tuple with named variables
func anotherFunction (str: String) -> (name: String, level: Int, power: String) {
    let tuplesss: (name: String, level: Int, power: String) = ("Hamilton", 99, str)
    return tuplesss
}

var hamilton = anotherFunction(str: "Perseverance")
hamilton.name
hamilton.level
hamilton.power
