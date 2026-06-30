protocol Greetable {
    func greet() -> String
}

struct Person: Greetable {
    var name: String

    func greet() -> String {
        return "Hi, I am \(name)"
    }
}

struct Robot: Greetable {
    var id: String

    func greet() -> String {
        return "Beep boop, I am robot \(id)"
    }
}

let john = Person(name: "John")
let r2d2 = Robot(id: "R2-D2")

print(john.greet())
print(r2d2.greet())

let things: [Greetable] = [john, r2d2]
for thing in things {
    print(thing.greet())
}

protocol Playable {
    func play()
}

class Guitar: Playable {
    func play() {
        print("Strumming guitar")
    }
}

class Piano: Playable {
    func play() {
        print("Playing piano")
    }
}

let guitar = Guitar()
let piano = Piano()
guitar.play()
piano.play()
