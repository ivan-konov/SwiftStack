#SwiftStack

SwiftStack implementation for Swift using an array as underlying storage. The stack is dynamic and does not have over/underflow situations.

Feedback is welcome and greatly appreciated!

##Usage

```swift
var stack = Stack()

// add an element
stack.push("element")

// peek the top element
let peeked = stack.peek()

// remove an element
let poppedElement = stack.pop()

// remove all elements
stack.clear()

// query the stack

let emptyTest = stack.isEmpty
let stackCount = stack.count

```

##License
SwiftStack is MIT-licensed.  
If you use it please acknowledge it and tell me about it!
