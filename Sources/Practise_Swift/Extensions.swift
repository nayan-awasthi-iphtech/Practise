extension Int {
    func isEven() -> Bool {
        return self % 2 == 0
    }

    func isOdd() -> Bool {
        return self % 2 != 0
    }
}

let number = 7
print("Is \(number) even? \(number.isEven())")
print("Is \(number) odd? \(number.isOdd())")

print("Is 10 even? \(10.isEven())")

extension String {
    func sayHello() {
        print("Hello, \(self)!")
    }

    var length: Int {
        return self.count
    }
}

let myName = "Rahul"
myName.sayHello()
print("Length of name is \(myName.length)")

extension Double {
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }

    func toFahrenheit() -> Double {
        return (self * 9 / 5) + 32
    }
}

let fTemp = 98.6
print("\(fTemp)°F is \(fTemp.toCelsius())°C")

let cTemp = 37.0
print("\(cTemp)°C is \(cTemp.toFahrenheit())°F")
