class Node<T: Equatable>: Equatable {
    var value: T
    var nextNode: Node?
    var previousNode: Node?
    
    init(val: T) {
        self.value = val
    }
    
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.nextNode == rhs.nextNode && lhs.previousNode == rhs.previousNode && lhs.value == rhs.value
    }
}
