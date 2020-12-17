class Queue<T> {
    var array: [T] = []
    
    @discardableResult
    func enqueue(value: T) -> Bool {
        array.append(value)
        return true
    }
    
    func dequeue() -> T? {
        guard array.count > 0 else {
            return nil
        }
        return array.removeFirst()
    }
    
    func countAll() -> Int {
        array.count
    }
    func first() -> T? {
        return array.first
    }
    func empty() -> Bool {
        return array.count == 0
    }
    
}
