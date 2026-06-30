func runOperators() {
    // Assignment Operator

    let b = 10
    var a = 5
    a = b

    let (x, y) = (1, 2)

    // Arithmetic Operators

    1 + 2
    5 - 3
    2 * 3
    10.0 / 2.5

    "hello, " + "world"

    // Remainder Operator

    9 % 4
    -9 % 4

    // Unary Minus Operator

    let three = 3
    let minusThree = -three
    let plusThree = -minusThree

    // Unary Plus Operator

    let minusSix = -6
    let alsoMinusSix = +minusSix

    // Compound Assignment Operators

    var a1 = 1
    a1 += 2

    // Comparison Operators

    1 == 1
    2 != 1
    2 > 1
    1 < 2
    1 >= 1
    2 <= 1

    let name = "world"
    if name == "world" {
        print("hello, world")
    } else {
        print("I'm sorry \(name), but I don't recognize you")
    }

    // Ternary Conditional Operator

    let contentHeight = 40
    let hasHeader = true
    let rowHeight = contentHeight + (hasHeader ? 50 : 20)

    // Nil-Coalescing Operator

    let defaultColorName = "red"
    var userDefinedColorName: String?
    var colorNameToUse = userDefinedColorName ?? defaultColorName

    userDefinedColorName = "green"
    colorNameToUse = userDefinedColorName ?? defaultColorName

    // Range Operators

    for index in 1...5 {
        print("\(index) times 5 is \(index * 5)")
    }

    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
        print("Person \(i + 1) is called \(names[i])")
    }

    for name in names[2...] {
        print(name)
    }

    for name in names[...2] {
        print(name)
    }

    for name in names[..<2] {
        print(name)
    }

    let range = ...5
    range.contains(7)
    range.contains(4)
    range.contains(-1)

    // Logical Operators

    let allowedEntry = false
    if !allowedEntry {
        print("ACCESS DENIED")
    }

    let enteredDoorCode = true
    let passedRetinaScan = false
    if enteredDoorCode && passedRetinaScan {
        print("Welcome!")
    } else {
        print("ACCESS DENIED")
    }
}

