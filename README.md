#SwiftStack

SwiftStack is a Stack implementation for Swift.
It uses an array as underlying storage. The stack is dynamic and does not have over/underflow states.

Feedback is welcome and greatly appreciated!

##Usage

```swift
// create an empty stack of strings
var stack = SwiftStack<String>()

// add an element
stack.push("element")

// peek the top element
let peeked = stack.peek()

// remove an element
let poppedElement = stack.pop()

// remove all elements
stack.clear()

// check if stacks is empty
let empty = stack.isEmpty

// get count of the elements contained in the stack
let stackCount = stack.count

// check if an element is contained in the stack
let elementCs
ontaied = stack.containsElement("element")

// get the first index of an element if contained in the stack
let indexOfElement = stack.indexOfElement("element")

```

##License
SwiftStack is MIT-licensed.  
If you use it please acknowledge it and tell me about it!
