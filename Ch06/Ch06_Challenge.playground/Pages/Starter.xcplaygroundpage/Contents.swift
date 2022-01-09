/*:
 # Chapter Challenge: Inventory Management
 ---
 
 ### Tasks
 1. Create a class called **Item** and declare properties for **name**, **price**
 2. Declare a default initializer and set the instance properties
 3. Create a struct called **BonusEffect** and declare an integer property named **bonus**
 4. Add an optional **BonusEffect** property to **Item** named **secret**
 5. Create a new class called **Inventory** with an Items array property named **storedItems**
 6. Declare a default initializer that takes in an array of Items and assigns them to **storedItems**
 7. Create a **BonusEffect** and two **Ite** instances and assign the bonus effect as one items **secret**
 8. Create an **Inventory** instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items **bonus** value
 
 [Previous Topic](@previous)
 
 */
// 1
class Item {
    var name: String
    var price: Int
// 4
    var secret: BonusEffect?

// 2
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

// 3
struct BonusEffect {
    var bonus: Int
}

// 5
class Inventory {
    var storedItems: Array<Item>
    
// 6
    init(items: Array<Item>) {
        self.storedItems = items
    }
}

// 7
var bonusEffect = BonusEffect(bonus: 90)
var item1 = Item(name: "Mjolnir", price: 500)
var item2 = Item(name: "Vibranium Shield", price: 350)
item1.secret = bonusEffect

// 8
var inventory = Inventory(items: [item1, item2])
if let secret2 = inventory.storedItems[0].secret?.bonus {
    print(secret2)
} else if let secret1 = inventory.storedItems[1].secret?.bonus {
    print(secret1)
} else {
    print("No secret found!")
}

for item in inventory.storedItems {
    if let secret = item.secret?.bonus {
        print("The secret of \(item.name) is \(secret) extra power!")
    } else {
        print("\(item.name) has no secret bonus :(")
    }
}
