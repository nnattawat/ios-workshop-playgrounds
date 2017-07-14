//: ### Properties, Methods and Subscripts
/*:
 * callout(properties):
 stored instance and type properties, lazy stored, computed properties, property observers using `willSet` and `didSet`
 */
struct Magazine {

  // stores (type) property
    static let group = "XXX"
  
  // stored (instance) property
  
  // lazy stored property
  
  // computed property
  
}


/*:
 * callout(methods):
 instance methods, type methods using `static` and `class`
 */
class Player {

  // instance method
    func moveTo(position: Int) {
        
    }
  
  // type method (you cant override)
    static func getAllPlayers() -> [Player] {
        return [Player]()
    }
  
  // type methods (you can override)
    class func getPlayersWithName(name: String) -> [Player] {
        return [Player]()
    }
  
}


/*:
 * callout(subscripts):
 shortcuts for accessing the member elements of a collection using `subscript(index: Int) -> Int`
 */
struct Trip {
    var title: String
    var stops: [String]
    
    subscript (index: Int) -> String {
        return stops[index]
    }
}

var trip = Trip(title: "Sydney", stops: ["The Rocks", "Cirqular quay"])
trip[0]

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Properties
//: * Methods
//: * Subscripts


