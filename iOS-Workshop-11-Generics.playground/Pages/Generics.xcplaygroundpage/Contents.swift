//: ### Generics
/*:
 * callout(generic functions):
 create functions that work with any type
 */
func doSwap(_ a: inout Int, _ b: inout Int) {
  let temp = a
  a = b
  b = temp
}

var a = 10
var b = 20

doSwap(&a, &b)
print("a is \(a) and b is \(b)")


/*:
 * callout(generic types):
 create types that work with collections of any type
 */
struct IntStack {
  var items = [Int]()
  mutating func push(_ item: Int) {
    items.append(item)
  }
  mutating func pop() -> Int {
    return items.removeLast()
  }
}

struct Stack<Element> {
  var items = [Element]()
  mutating func push(_ item: Element) {
    items.append(item)
  }
  mutating func pop() -> Element {
    return items.removeLast()
  }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
print(stackOfStrings)

let fromTheTop = stackOfStrings.pop()
print(fromTheTop)


//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Generics


