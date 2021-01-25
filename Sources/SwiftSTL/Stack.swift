public struct Stack<T> {
    
    fileprivate var stackArray = [T]()
    
    public var count: Int {
        return stackArray.count
    }
    
    public var isEmpty: Bool {
        return stackArray.isEmpty
    }
    
    public var top: T? {
        if isEmpty{
            return nil
        } else {
            return stackArray.last
        }
    }
  
    public mutating func push(_ element: T) {
        stackArray.append(element)
    }
    
    
    public mutating func pop() -> T? {
        
        if isEmpty{
            print("stack is empty")
            return nil
        }else {
            return stackArray.removeLast()
        }
    }
    
    public mutating func printAllElements() {
        
        guard count > 0 else {
            print("stack is empty")
            return
        }
   
        for (index, value) in stackArray.enumerated() {
            print("[\(index)]\(value)")
        }
    }
}
