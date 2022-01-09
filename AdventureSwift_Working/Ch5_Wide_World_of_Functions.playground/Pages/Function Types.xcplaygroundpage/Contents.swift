/*:
 # Function Types
 ---
 
 ## Topic Essentials
 Every function has a type, or unique signature. Function types can be used in Swift like any other type, such as strings or integers. This can come in handy when you need to pass functions into other functions as parameters, or use them as return types.
 
 ### Objectives
 + Create a function that takes in an integer, multiplies it by 4 and returns it
 + Create another function that takes an integer and a function as parameters
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Function types
func computeBonusDamage (baseDamage: Int) -> Int {
    return baseDamage * 4
}

/// Type signature for the above function is wriiten like this `(Int) -> Int`
/// Can be read as -> takes in an int and returns an int


// Functions as parameters
//This is sort of like calling another function from your main funciton

func dealDamage(baseDamage: Int, bonusDamage: (Int) -> Int) {
    let bonus: Int = bonusDamage(baseDamage)
    
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)")
}
dealDamage(baseDamage: 6, bonusDamage: computeBonusDamage)

// Calling the function instead of passing the function in as a parameter
func dealDamage(baseDamage: Int) {
    let bonus = computeBonusDamage(baseDamage: baseDamage)
    
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)\nfrom another function!")
    
}
dealDamage(baseDamage: 10)
