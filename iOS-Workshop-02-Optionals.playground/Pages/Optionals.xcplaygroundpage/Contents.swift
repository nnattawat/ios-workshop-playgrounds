//: ### Optionals
//: * optionals represent values that _may_ be absent
/*:
 * callout(using optionals):
  using `SomeType?`, force unwrap, implicitly unwrapped, optional binding and the nil-coalescing operator (`a = b ?? c`)
 */
// declare an optional type
var name: String?
print(name)

name = "Arm"
print(name)


// unwrap an optional with '!' (if you know it has a value)
name!
print(name!)


// optional binding to find out whether an optional contains a value
var score: Int?
score = 200

if let actualScore = score {
    print(actualScore)
}

// nil-coalescing (shorthand)
let newScore = score ?? 0
print(newScore)


// implicitly unwrapped optionals
var colorName: String!
print(colorName)


/*:
 * callout(optional chaining):
 if `residence` is `nil` the following returns an optional (`nil` value) instead of runtime error; `person.residence?.rooms`
 */
struct Person {
    var residence: Residence?
}

struct Residence {
    var room: [Room]
}

struct Room {
    var number: Int
}

var person = Person(residence: nil)
person.residence?.room

var person1 = Person(residence: Residence(room: [Room(number: 1)]))
person1.residence?.room

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * The Basics
//: * Optional Chaining
