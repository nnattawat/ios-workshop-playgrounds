//: ### Functions and Closures
/*:
 * callout(definition, parameters and return values):
 define and call a function, using argument labels and parameter names, default parameters and variadic parameters (`param: Int = 1` and `param: Double ...`), in-out parameters
 */
// declare a function
func sayHello() {
    print("hello")
}
sayHello()

// argument labels and parameter names
func sayHello(to name: String) {
    print("hello \(name)")
}
sayHello(to: "Arm")

func sayHelloTo(_ name: String) {
    print("hello \(name)")
}
sayHelloTo("Arm")

func greet(name: String) {
    print("hello \(name)")
}
greet(name: "Tom")


// return values

func didFinish() -> Bool {
    return true
}

func didFinishWithResults() -> (Bool, Float) {
    return (true, 2.0)
}


// default parameters

func displayScore(score: Int, animated: Bool = true) {
    print("\(score) animated \(animated)")
}
displayScore(score: 4)


// variadic parameters
func sumScores(score: Int ...) -> Int {
    var total = 0
    for n in score {
        total += n
    }
    return total
}
sumScores(score: 10, 20, 30)


// in-out paramters
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

/*:
 * callout(function types):
 every function has a specific function type, made up of the parameter types and the return type of the function
 */
// function type consists of the parameter and return type of the function
func myFunc(a: Int) -> Int {
    return 0
}

// function types (just like any other type in Swift) can be assigned as variables and constants
func anotherFunc() {}


// function types can be passed as parameters to other functions
//var foo


//: ### Closures
//: * self-contained blocks of functionality that can be passed around and used in your code
//: * closures _capture_ their surrounding variables and constants, swift manages memory
/*:
 * callout(closure syntax):
 example
 */
let anArray = [3, 2, 5, 1, 6]

// to sort this array, lets use array.sorted(), which sorts the array using a closure to define the sort operation

// the long way ...
func sortFunc(i1: Int, i2: Int) -> Bool {
    return i1 < i2
}
anArray.sorted(by: sortFunc)


// using closure expression syntax
anArray.sorted(by: {(i1: Int, i2: Int) -> Bool in return i1 < i2})

// using type inference
anArray.sorted(by: {(i1, i2) -> Bool in return i1 < i2})

// using implicit return
anArray.sorted(by: {(i1: Int, i2: Int) -> Bool in i1 < i2})
// using shorthand argument names ($0)
anArray.sorted(by: {$0 < $1})

// using operator functions (because operators are functions in swifuncgit ft)
anArray.sorted(by: <)

/*:
 * callout(trailing closure syntax):
 example
 */
anArray.filter { num -> Bool in
    num > 7
}

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Functions
//: * Closures
