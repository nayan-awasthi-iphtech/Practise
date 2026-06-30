class Optionals{
    var name: String = "nayan"
}

let optional: Optionals? = nil

print(optional?.name ?? "nil")


class Person {
    var name = "Nayan"
}

var person: Person? = Person()

print(person?.name ?? "nil")

class Residence{
    var noOfRooms = 1
}

class Person{
    var residence: Residence?
}

let john = Person()

print(john.residence?.noOfRooms ?? "nil")

if let roomCount = john.residence?.noOfRooms {
    print(roomCount)
}
else{
    print ("No rooms")
}

