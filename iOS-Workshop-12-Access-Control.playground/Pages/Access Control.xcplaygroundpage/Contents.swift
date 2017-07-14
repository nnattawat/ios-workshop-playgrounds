//: ### Access Control
/*:
 * callout(open access and public):
 using `open` and `public`
 */
// Oepen is can be overriden but not public

open class MyClassOpenForSubclassing {}

public class MyClassClosedForSubclassing {}

/*:
 * callout(internal access):
 using `internal` (the default)
 */

// Internal is default
internal func myInternalFunc() {}
func myInternalFunc2() {}

/*:
 * callout(private access):
 using `fileprivate` or `private`
 */
fileprivate struct MyFilePrivateType {}
private struct MyPrivateType {}

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Access Control


