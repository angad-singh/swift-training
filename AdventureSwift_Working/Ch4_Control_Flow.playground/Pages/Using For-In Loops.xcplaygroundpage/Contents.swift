/*:
 # Using FOR-IN Loops
 ---
 
 ## Topic Essentials
 For-in loops are used primarily to iterate, or loop through, sequences. Sequences can be array items, dictionary key-value pairs, ranges, and even characters in a string.
 
 ### Objectives
 + Use a for-in loop to iterate over a string, array, dictionary, and index ranges
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

// Strings and arrays

// this syntax is similar to how we do for loops in Ruby: arr_of_things.each do |var|; end
// Swift automatically inferred the type from playerGreeting for stringCharacter
for stringCharacter in playerGreeting {
    print(stringCharacter)
}

for armor in armorTypes {
    print(armor)
}

// Dictionary key-value pairs
for weaponKey in weapons.keys {
    print(weaponKey)
}

for weaponVal in weapons.values {
    print(weaponVal)
}

for weapon in weapons {
    print("The key is \(weapon.key) & the value is \(weapon.value)")
}

// Another way of accessing key-value at the same time, similar ruby syntax:
// dict.each do |key, value|; end
for (weapon, damage) in weapons {
    print("Weapon: \(weapon), Damage: \(damage)")
}

// Using ranges
// Closed Range: for every number in 1 through 10 (1 and 10 included)
for indexNumber in 1...10 {
    print(indexNumber)
}

// One-Sided ranges: they have a start and an end and it keeps on going until
// it exhausts the range
for armor in armorTypes[0...] {
//    loop through all armor types starting at 0
    print(armor)
}
print("-------------------")
for armor in armorTypes[...1] {
//    loop through all armor types stopping at 1
    print(armor)
}

// one-sided loops can lead to infinite loops so be careful.
// doing something like for indexnumber in 1... will lead to an infinite loop and eventual crash


print("-------------------")
// Half-open range: the last value is left out, not included in the loop
// the syntax changes from 3 dots to ..<N where N is left out and the loop goes to N-1
for indexNumber in 1..<10 {
    print(indexNumber)
}
print("-------------------")

for armor in armorTypes[..<2] {
//    go up to the third index but not the third index, so this will print index 0 & 1
//    This could lead to error where the index does not exist better to use the length
    print(armor)
}
print("-------------------")

for armor in armorTypes[..<armorTypes.count] {
//    this is much more safer and you will always stay in the bounds
    print(armor)
}

print("-------------------")
var anotherDict: [String : String] = ["Hi": "Bonjour", "Angad": "Singh", "test": "TEST"]

for (key, value) in anotherDict {
    if value.count % 2 == 0 {
        print ("The value(\(value)) for key - \(key) is of even length")
    } else {
        print ("The value(\(value)) for key - \(key) is of odd length")
    }
}
