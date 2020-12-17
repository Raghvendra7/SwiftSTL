class SingleLinkedList<T: Equatable> {
    
    var headNode: Node<T>?
    var tailNode: Node<T>?
    
    
    func appendNode(element: T) {
        let node = Node<T>(val: element)
        if headNode == nil {
            headNode = node
        } else {
            tailNode?.nextNode = node
        }
        tailNode = node
    }
    
    func fetchAllNodes() {
        var tempNode = headNode
        while tempNode != nil {
            print(tempNode!.value)
            tempNode = tempNode?.nextNode
        }
    }
    
    func fetchAllElementBYrecursion(node: Node<T>?) {
        if tailNode != nil {
            print(node!.value)
        }
        if node?.nextNode != nil {
            fetchAllElementBYrecursion(node: node?.nextNode)
        }
        return
    }
    
    func insertNode(val: T, index: Int) {
        var count = 0
        var node = headNode
        while node != nil {
            if count == (index - 1) {
                let tempNode = node?.nextNode
                let newNode = Node(val: val)
                newNode.nextNode = tempNode
                node?.nextNode? = newNode
                break
            } else {
                node = node?.nextNode
            }
            count += 1
        }
    }

    func deleteNode(val: T) {
        var node = headNode
        if headNode?.value == val {
            headNode = node?.nextNode
            return
        }
        while node != nil {
            if node?.nextNode?.value == val {
                node?.nextNode = node?.nextNode?.nextNode
                return
            }
            node = node?.nextNode
        }
    }
    
    func popNode() -> T? {
        defer {
            headNode = headNode?.nextNode
            if headNode == nil {
                tailNode = nil
            }
        }
        return headNode!.value
    }
    
    func removeLast() -> T? {
        var node = headNode
        if headNode == tailNode {
            headNode = nil
            tailNode = nil
        }
        while node?.nextNode != tailNode {
            node = node?.nextNode
        }
        defer {
            node?.nextNode = nil
            tailNode = node
        }
        return tailNode?.value
    }
    
}
