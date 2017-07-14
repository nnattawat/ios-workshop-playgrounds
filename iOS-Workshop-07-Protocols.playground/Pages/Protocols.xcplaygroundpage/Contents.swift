//: ### Protocols
//: * a protocol defines requirements a conforming type agrees to implement
/*:
 * callout(define a protocol):
 with instance properties, instance methods and type methods, subscripts, operators and initializers
 */
// property requirements
protocol HasTitle {
  var title: String { get }
}

// instance method requirementa
protocol Runnable {
  func run(for duration: Int) -> Bool
}

// initializer requirement
protocol Labeled {
  init(label: String)
}


/*:
 * callout(conform to a protocol):
 with a class, struct or enumeration
 */
struct Person: HasTitle, Runnable, Labeled {
  var title: String

  init(label: String) {
    self.title = label
  }
  
  func run(for duration: Int) -> Bool {
    return true
  }
}

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Protocols


