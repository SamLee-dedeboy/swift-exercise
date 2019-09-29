/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
import Foundation

class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    var name:String
    var age:Int
    var description: String {
        return "name:\(name) age:\(age)"
    }
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    static func == (lhs:Human, rhs:Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs:Human, rhs:Human) -> Bool {
        return lhs.age < rhs.age
    }
}
var human1 = Human(name: "sam", age: 20)
var human2 = Human(name: "sara", age: 21)

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(human1)
print(human2)

/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(human1 == human2)
print(human1 != human2)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
var someone1 = Human(name: "a", age: 23)
var someone2 = Human(name: "b", age: 21)
var someone3 = Human(name: "c", age: 22)
var people = [someone1, someone2, someone3]
var sortedPeople = people.sorted()
print(sortedPeople)

/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */

var someData = try JSONEncoder().encode(human1)
print(String(decoding:someData, as:UTF8.self))
//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
