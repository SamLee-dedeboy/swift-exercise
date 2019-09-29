/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */

var someCollection:[Any] = [1.0, 1, "some string", false]
print(someCollection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in someCollection {
	switch item {
		case is Int: 
			print("The integer has a value of \(item)")
		
		case is Double 
			print("The Double has a value of \(item)")
		
		case is String 
			print("The String has a value of \(item)")
		
		case is Bool 
			print("The Bool has a value of \(item)")
		default:
			print("unknown type")
	}
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */

var someDic = ["Some Double":1.0, "Some Int":1, "Some String":"some string", "Some Bool":true]
print(someDic)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total:Double = 0
for (key, value) in someDic {
	switch value {
		case is Int, is Double 
			total += value as! Double
		
		case is String 
			total += 1
		
		case is Bool 
			total += value as! Bool ? 2 : -3
		default:
	}
}
print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2:Double = 0
for item in someCollection {
	switch item {
	if item is Int || item is Double {
		total2 += item	
	}
	if item is String && let value = Int(item) {
		total2 += value
	}
	}
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
