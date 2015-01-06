#SwiftStack

SwiftStack implementation for Swift using an array as underlying storage. The stack is dynamic and does not have over/underflow situations.

Feedback is welcome and greatly appreciated!

##Usage

```swift
var stack = Stack<String>()

// add an element
stack.push("element")

// peek the top element
let peeked = stack.peek()

// remove an element
let poppedElement = stack.pop()

// remove all elements
stack.clear()

// check if stacks is empty
stack.isEmpty

// get count of the elements contained in the stack
stack.count

// check if an element is contained in the stack
stack.containsElement("element")

```

##License
SwiftStack is MIT-licensed.  
If you use it please acknowledge it and tell me about it!
