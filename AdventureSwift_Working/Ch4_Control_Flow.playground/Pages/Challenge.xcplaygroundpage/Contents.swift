/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
    6a. exp is equal to 32
    6b. exp is between 200 and 500
    6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
print("-------------1-------------")
// 1
var lefthandWeapon: String? = "Vibranium shield"
var righthandWeapon: String? = "Mjolnir"

print("-------------2-------------")

// 2
if let leftWeapon = lefthandWeapon, let rightWeapon = righthandWeapon {
    print("The world is yours with the \(leftWeapon) and the \(rightWeapon)!!")
} else {
    print("You are missing weapon either in one hand or both.")
}

print("-------------3-------------")

// 3
var playerExp: [String: Int] = ["Battle": 32, "Commander": 0, "Healing": 699, "Spying": 499]

print("-------------4-------------")

// 4
for (skill, level) in playerExp {
    print("The player is at level \(level) for \(skill)")
}

print("-------------5-------------")

// 5
for (skill, level) in playerExp {
    guard level >= 1 else {
        print("You need to be atleast level 1 for \(skill)")
        continue
    }
    
    print("The player is at level \(level) for \(skill)")
}

print("-------------6-------------")

// 6
//Use a switch statement to define the following cases: 6a. exp is equal to 32 6b. exp is between 200 and 500 6c. Use value binding to store exp and check that it is greater than 500 using the where keyword

for (skill, level) in playerExp {
    print("Skill: \(skill)")
    switch level {
    case 32:
        print("Congrats, your level is 32!")
    case 200...500:
        print("Congrats, your level is between 200 & 500")
    case (let exp) where exp > 500:
        print("congrats, your level is \(exp)")
    default:
        print("Damn, low level bro")
    }
}
