// String Literals

let someString = "Some string literal value"

// Multiline String Literals

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

// Special Characters in String Literals

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

// Extended String Delimiters

print(#"Line 1\nLine 2"#)
print(#"Write an interpolated string in Swift using \(multiplier)."#)

// Initializing an Empty String

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

// String Mutability

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander" // Compile-time error

// Working with Characters

for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

// Concatenating Strings and Characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

welcome.append(exclamationMark)

let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)

let goodStart = """
    one
    two

    """
print(goodStart + end)

// String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

print(#"6 times 7 is \#(6 * 7)."#)

// Unicode

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

// Counting Characters

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")

word += "\u{301}"

print("the number of characters in \(word) is \(word.count)")

// String Indices

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

// greeting[greeting.endIndex] // Runtime error
// greeting.index(after: greeting.endIndex) // Runtime error

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

// Inserting and Removing

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)

welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))

welcome2.remove(at: welcome2.index(before: welcome2.endIndex))

let range = welcome2.index(welcome2.endIndex, offsetBy: -6)..<welcome2.endIndex
welcome2.removeSubrange(range)

// Substrings

let greeting2 = "Hello, world!"
let idx = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<idx]

let newString = String(beginning)

// Comparing Strings

let quotation2 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation2 == sameQuotation {
    print("These two strings are considered equal")
}

