func runCollectionTypes() {
    // Arrays

    var shoppingList: [String] = ["Eggs", "Milk"]
    shoppingList.append("Flour")
    shoppingList += ["Baking Powder"]
    shoppingList[0] = "Six eggs"
    shoppingList.insert("Maple Syrup", at: 0)
    shoppingList.remove(at: 0)

    print(shoppingList.count)
    print(shoppingList.isEmpty)

    for item in shoppingList {
        print(item)
    }

    for (index, value) in shoppingList.enumerated() {
        print("Item \(index + 1): \(value)")
    }

    // Sets

    var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
    favoriteGenres.insert("Jazz")
    favoriteGenres.remove("Rock")

    print(favoriteGenres.contains("Funk"))

    for genre in favoriteGenres {
        print(genre)
    }

    for genre in favoriteGenres.sorted() {
        print(genre)
    }

    // Set Operations

    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let primes: Set = [2, 3, 5, 7]

    oddDigits.union(evenDigits).sorted()
    oddDigits.intersection(evenDigits).sorted()
    oddDigits.subtracting(primes).sorted()
    oddDigits.symmetricDifference(primes).sorted()

    // Set Membership

    let houseAnimals: Set = ["🐶", "🐱"]
    let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
    let cityAnimals: Set = ["🐦", "🐭"]

    houseAnimals.isSubset(of: farmAnimals)
    farmAnimals.isSuperset(of: houseAnimals)
    farmAnimals.isDisjoint(with: cityAnimals)

    // Dictionaries

    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    airports["LHR"] = "London"
    airports["LHR"] = "London Heathrow"

    if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print(oldValue)
    }

    if let airportName = airports["DUB"] {
        print(airportName)
    }

    airports["APL"] = "Apple International"
    airports["APL"] = nil

    if let removedValue = airports.removeValue(forKey: "DUB") {
        print(removedValue)
    }

    for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
    }

    for airportCode in airports.keys {
        print(airportCode)
    }

    for airportName in airports.values {
        print(airportName)
    }
}
