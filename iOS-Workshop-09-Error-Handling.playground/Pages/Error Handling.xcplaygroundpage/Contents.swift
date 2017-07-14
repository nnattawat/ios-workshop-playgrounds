//: ### Error Handling
/*:
 * callout(error types and throwing errors):
 using `throw` and the `Error` protocol, error handling by propagation (using `throws`), error handling with do-catch, error handling by converting to optionals (`try?`), disable error propagation (`try!`)
 */
// Custom errors
enum NetworkError: Error {
  case connectionError
  case timeoutError
}

// throwing error
func myThrowingFunction() throws {
  throw NetworkError.connectionError
}

// handling error
do {
  try myThrowingFunction()
} catch NetworkError.connectionError {
  print("connection error")
} catch {
  print("some \(error)")
}

// convert errors to optional (try?)
func myThrowFunctionWithReturnValue(forceThrow: Bool) throws -> String {
  if forceThrow {
    throw NetworkError.timeoutError
  }

  return "done"
}

try? myThrowFunctionWithReturnValue(forceThrow: true)
try? myThrowFunctionWithReturnValue(forceThrow: false)

/*:
 * callout(cleanup actions):
 using `defer`
 */
func deferFunc() {
  defer {
    print("in defer")
  }

  print("done with my function")
}

deferFunc()

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Error Handling


