/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias tuple called **Attack** with named values for name and damage
 2. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 3. Write an overloaded version of **attackEnemy** with a parameter of type Attack that returns an string
 4. Use both **attackEnemy** methods
 5. Create a type alias closure called **AttackClosure** that takes in an array of Attacks and returns void, then declare a test array of Attack values.
 6. Write a function called **fetchPlayerAttacks** that has a closure parameter of type AttackClosure and no return value
 7. Call **fetchPlayerAttacks** and loop through the array inside the closure body to print out its tuple values
 
 [Previous Topic](@previous)
 
 */
// 1
typealias Attack = (name: String, damage: Int)

var sunStrike: Attack = ("Sun Strike", 100)

// 2
func attackEnemy (damage: Int) -> Void {
    print("The enemy has been dealt an attack of \(damage) damage!\n")
}

// 3
func attackEnemy (attack: Attack) -> String {
    let msg: String = "The enemy has been attacked with \(attack.name) dealing a damage of \(attack.damage)!\n"
    return msg
}

// 4
attackEnemy(damage: sunStrike.damage)
print(attackEnemy(attack: sunStrike))

// 5
typealias AttackClosure = (Array<Attack>) -> Void
var attackArray: Array<Attack> = [sunStrike, ("Hell raiser", 500), ("Fists of Fury", 60)]

// 6
func fetchPlayerAttacks(closure: AttackClosure) -> Void {
    closure(attackArray)
}

// 7
fetchPlayerAttacks { (arrAttack) in
    for (name, damage) in arrAttack {
        print("Attack name: \(name)\nAttack damage: \(damage)\n\n=======****=======\n")
    }
}

