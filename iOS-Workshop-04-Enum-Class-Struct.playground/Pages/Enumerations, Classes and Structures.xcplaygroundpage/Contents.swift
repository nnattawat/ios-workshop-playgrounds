//: ### Enumerations, Classes and Structures
/*:
 * callout(enumerations):
 declaration (single line, multi-line), raw values, associated values (`case(SomeType)`), computed instance properties, stored and computed type properties, instance and type methods, initalizers and subscripts
 */
// decalre an enum
enum Size {
    case small
    case medium
    case large
}

let smallSize = Size.small
let large: Size = .large

// enum with instance methods
//enum Direction {
//    case north, east, south, west
//    
//    func displayName() -> String {
//        switch self {
//        case .north:
//            return "Heading north"
//        case .east:
//            return "Heading east"
//        }
//    }
//}
//
//let diresction: Direction =  .north
//direction.displayName()


// enum with raw value



// enum with associated values

/*:
 * callout(structures):
 structures (and enumerations) are _value types_ - a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function
 */
// declare a structure
struct Color {
    
}
let red = Color()

struct Point {
    var x, y: Int
}
let point = Point(x: 1, y: 2)

// value types are copied on assignment
let pointA = Point(x: 1, y: 2)
var pointB = pointA
print(pointA)
print(pointB)

pointA.x = 20
print(pointA)
print(pointB)


/*:
 * callout(classes):
 classes are _reference types_ - are not copied when they are assigned to a variable or constant, or when they are passed to a function. Unlike structs, a class can inherit methods and properties (`override`, `final` and `super`)
 */
// decalre a class
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let person = Person(name: "Arm")

// reference types are not copied on assignment
let personA = Person(name: "Arm")
let personB = personA

print(personA)
print(personB)

personB.name = "new name"
print(personA)
print(personB)


// inheritance


/*:
 * callout(type casting):
 checking with `is` downcast with `as?` and `as!`, `Any` and `AnyObject`
 */
// check which type (is)


// downcast (as?, as!)


/*:
 * callout(nested types):
  swift enables you to define nested types, whereby you nest supporting enumerations, classes, and structures within the definition of the type they support
 */


//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Enumerations
//: * Classes and Structures
//: * Inheritance
//: * Type Casting
//: * Nested Types


