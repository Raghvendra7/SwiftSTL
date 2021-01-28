public class Node<T: Equatable>: Equatable {
    public var value: T
    public var nextNode: Node?
    public var previousNode: Node?
    
    public init(val: T) {
        self.value = val
    }
    
    public static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.nextNode == rhs.nextNode && lhs.previousNode == rhs.previousNode && lhs.value == rhs.value
    }
}
