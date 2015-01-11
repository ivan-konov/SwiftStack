//
//The MIT License (MIT)
//
//Copyright (c) 2014 Ivan Konov
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.



struct SwiftStack<T: Equatable> {
    typealias ElementType = T
    
    private var storage = [ElementType]()
    
    // MARK: Quering the Stack
    var count: Int {
        return storage.count
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    func peek() -> ElementType? {
        if storage.count > 0 {
            let lastElementIndex = storage.count - 1
            
            return storage[lastElementIndex]
        }
        
        return nil
    }
    
    func containsElement(element: ElementType) -> Bool {
        return contains(storage, element)
    
    }
    
    func indexOfElement(element: ElementType) -> Int? {
        return find(storage, element)
    }
    
    // MARK: Adding and Removing Elements
    
    mutating func push(element: ElementType) {
        storage.append(element)
    }
    
    mutating func pop() -> ElementType? {
        if storage.count > 0 {
            return storage.removeLast()
        }
        
        return nil
    }
    
    mutating func clear() {
        storage.removeAll()
    }
}

    // MARK: Debug
extension SwiftStack: Printable {
    var description: String {
        return storage.description
    }
}
