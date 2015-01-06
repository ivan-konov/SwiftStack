//
//  Stack.swift
//  
//
//  Created by Ivan Konov on 1/6/15.
//
//

struct Stack {
    var storage = [Any]()
    
    
    // MARK: Quering the Stack
    var count: Int {
        get {
            return storage.count
        }
    }
    
    var isEmpty: Bool {
        get {
            return storage.isEmpty
        }
    }
    
    func peek() -> Any? {
        if storage.count > 0 {
            let lastElementIndex = storage.count - 1
            
            return storage[lastElementIndex]
        }
        
        return nil
    }
    
    // MARK: Adding and Removing Elements
    
    mutating func push(value: Any) {
        storage.append(value)
    }
    
    mutating func pop() -> Any? {
        storage.description
        
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
extension Stack: Printable {
    var description: String {
        return storage.description
    }
}