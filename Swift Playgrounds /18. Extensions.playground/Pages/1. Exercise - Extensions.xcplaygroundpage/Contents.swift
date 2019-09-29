/*:
 ## Exercise - Extensions
 
 Define an extension to `Character` that includes a function `isVowel()`. The function returns `true` if the character is a vowel (a,e,i,o,u), and `false` otherwise. Be sure to properly handle uppercase and lowercase characters.
 */
extension Character {
    func isVowel() -> Bool {
        return String(self).lowercased() == "a" ||
            String(self).lowercased() == "e" ||
            String(self).lowercased() == "i" ||
            String(self).lowercased() == "o" ||
            String(self).lowercased() == "u"
    }
}


/*:
 Create two `Character` constants, `myVowel` and `myConsonant`, and set them to a vowel and a consonant, respectively. Use the `isVowel()` methods on each constant to determine whether or not it's a vowel.
 */
let myVowel:Character = "A"
let myConsonant:Character = "B"
print(myVowel.isVowel())
print(myConsonant.isVowel())

/*:
 Create a `Rectangle` struct with two variable properties, `length` and `width`, both of type `Double`. Below the definition, write an extension to `Rectangle` that includes a function, `half()`. This function returns a new `Rectangle` instance with half the length and half the width of the original rectangle.
 */
struct Rectangle {
    var length:Double
    var width:Double
    init(_ length:Double, _ width:Double) {
        self.length = length
        self.width = width
    }
}
extension Rectangle {
    func half() -> Rectangle{
        return Rectangle(self.length/2, self.width/2)
    }
    mutating func halved() {
        self = half()
    }
}

/*:
 Within the existing `Rectangle` extensions, add a new mutating function, `halved()`, which updates the original rectangle to have half the length and half the width. Use the `half()` function as part of the implementation for `halved()`.
 */


/*:
 Create a variable `Rectangle` called `myRectangle`, and set its length to 10 and its width to 5. Create a second instance, `mySmallerRectangle`, that's the result of calling `half()` on `myRectangle`. Then update the values of `myRectangle` by calling `halved()` on itself. Print each of the instances.
 */
var myRectangle = Rectangle(10,5)
var mySmallerRectangle = myRectangle.half()
myRectangle.halved()
print(myRectangle)
print(mySmallerRectangle)

//: page 1 of 2  |  [Next: App Exercise - Workout Extensions](@next)
