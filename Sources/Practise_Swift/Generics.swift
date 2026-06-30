func printValue<T>(_ value: T) {
    print("Value is \(value)")
}

printValue(10)
printValue("Hello")
printValue(3.14)

var a = 5
var b = 10
let temp = a
a = b
b = temp
print("a = \(a), b = \(b)")

func getFirst<T>(_ arr: [T]) -> T? {
    if arr.isEmpty {
        return nil
    }
    return arr[0]
}

let nums = [1, 2, 3]
if let first = getFirst(nums) {
    print("First number is \(first)")
}

let names = ["Alice", "Bob", "Charlie"]
if let firstName = getFirst(names) {
    print("First name is \(firstName)")
}

struct Box<T> {
    var value: T
}

let intBox = Box(value: 42)
let stringBox = Box(value: "Swift")
print("intBox contains \(intBox.value)")
print("stringBox contains \(stringBox.value)")

func isEqual<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}

print(isEqual(5, 5))
print(isEqual("apple", "orange"))
