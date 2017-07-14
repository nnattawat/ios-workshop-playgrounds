//: ### Basics
/*:
 * callout(variables and constants):
 using `var` and `let`, type annotations and type inference, basic types `Int, Float, Double, Bool, String`, tuples and type aliases
 */
// variables
var hello = "Hello"
hello.append(" Arm")

// constants
let welcome = "Welcome"
// welcome.append(" Arm")

// types and type inference
var age: Int = 21
var state: Bool

// tuples
var response = (200, "Success")
response.0
response.1

var playScore: (score: Int, firstName: String, surname: String)
playScore = (10, "Nattawat", "Nonsung")
playScore.firstName


// type alias
typealias IPOct = UInt8
let minOctetValue = IPOct.min

/*:
 * callout(collection types):
 arrays (ordered collections of values), sets (unordered collections of unique values) and dictionaries (unordered collections of key-value associations)
 */
// declaring arrays
var quizScore: [Int] = [2, 1, 3]
var quizScoreNoTypes = [1, 2, 3]

var emptyArray: [String] = []


// accessing arrays
quizScore.count
quizScore.contains(20)

emptyArray.isEmpty
quizScore.sorted()
quizScore
quizScore.sort()
quizScore

quizScore[0]
quizScore[0...1]

quizScore.append(4)



// dictionaries
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]


// sets

var primes: Set = [2, 3, 5, 7]

// Tests whether primes is a subset of a Range<Int>
print(primes.isSubset(of: 0..<10))
/*:
 * callout(control flow):
 loops (`for-in`, `while` and `repeat-while`), conditional statements (`if`, `if-else` and `switch`) control transfer labels (`continue`, `break`, `fallthrough`, `return` and `throw`), early exit (`guard-else`), checking API availability (`if #available`)
 */
// for-in
for i in 0...2 {
    print(i)
}

for _ in 0...2 {
    print("hello")
}

// additional constraints with 'where' clause

for name in ["Arm", "Sand", "Jackie"] where name.hasSuffix("kie") {
    print(name)
}


// while an repeat-while
var doneWhileLoop = false
while !doneWhileLoop {
    print("In while")
    doneWhileLoop = true
}

repeat {
    doneWhileLoop = true
} while !doneWhileLoop


// if if-else
if doneWhileLoop {
    
} else {
    
}

if doneWhileLoop {
    //
} else if !doneWhileLoop {
    //
}


// guard clause
let nameAndAges = ["arm": 21, "james": 30]

for (name, age) in nameAndAges {
    guard age > 25 else { continue }
    print("\(name) is \(age)")
}


// switch
let newScore = 2
switch newScore {
case (0..<2):
    fallthrough // is the same as (0..<2), (0..<5)
case (2..<5):
    print("score is from 0 - 4")
case (5..<10):
    print("score is from 5 - 10")
default:
    print("score is too big")
}


/*:
 * callout(operators):
 assignment operator (`=`), arithemic operators (`+` `-` `*` `/`), remainder operator (`%`), unary and compound assignment operators (`-foo` `+bar` `+=` `-=`), comparison operators (`==` `!=` `>` `<` `>=` `<=`), ternary conditional operator (`a ? b : c`), range operators (`a...b` `a..<b`), logical operators (`&&` `||`, `!foo`)
 */
// half open range operator (start to end, excluding end value)
let inclusive = 0...3
let exclusive = 0..<3

// closed range operator (start to end, inclusive of last value)


/*:
 * callout(comments):
 single line, multi line
 */
//

/*
  Multiline
 */

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * The Basics
//: * Strings and Characters
//: * Basic Operators
//: * Control Flow
//: * Collection Types
