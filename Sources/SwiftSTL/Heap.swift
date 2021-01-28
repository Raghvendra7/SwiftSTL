public enum HeapType {
    case Min
    case Max
}

public class Heap<T: Comparable> {
    private var items: Array<T>
    private var heapType: HeapType

    //min-heap default initialization
    public init(type: HeapType = .Min) {
        items = Array<T>()
        heapType = type
    }
    
    public var count: Int {
        return self.items.count
    }
    
    //the min or max value
    public func peek() -> T? {
        if items.count > 0 {
            return items[0] //the min or max value
        }
        else {
            return nil
        }
    }

    public func enQueue(_ key: T) {
        items.append(key)

        var childIndex: Float = Float(items.count) - 1
        var parentIndex: Int = 0
        
        //calculate parent index
        if  childIndex != 0 {
            parentIndex = Int(floorf((childIndex - 1) / 2))
        }
        var childToUse: T
        var parentToUse: T

        //use the bottom-up approach
        while childIndex != 0 {
            childToUse = items[Int(childIndex)]
            parentToUse = items[parentIndex]
            //heapify depending on type
            switch heapType {
            case .Min:
                
                //swap child and parent positions
                if childToUse <= parentToUse {
                    items.swapAt(parentIndex, Int(childIndex))
                }
        
            case .Max:
                
                //swap child and parent positions
                if childToUse >= parentToUse {
                    items.swapAt(parentIndex, Int(childIndex))
                }
            }
            //reset indices
            childIndex = Float(parentIndex)
            if  childIndex != 0 {
                parentIndex = Int(floorf((childIndex - 1) / 2))
            }
        } 
    } 
}
