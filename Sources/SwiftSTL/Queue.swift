public class Queue<T> {
    var array: [T] = []
    
    @discardableResult
    public func enqueue(value: T) -> Bool {
        array.append(value)
        return true
    }
    
    public func dequeue() -> T? {
        guard array.count > 0 else {
            return nil
        }
        return array.removeFirst()
    }
    
    public func countAll() -> Int {
        array.count
    }
    public func first() -> T? {
        return array.first
    }
    public func empty() -> Bool {
        return array.count == 0
    }
    
}
