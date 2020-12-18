func selectionShort(_ array: [Int]) {
    var temp_Array = array
    for index in 0..<temp_Array.count {
        var swapIndex = index
        for inerIndex in (index + 1)..<temp_Array.count {
            if temp_Array[swapIndex] > temp_Array[inerIndex] {
                swapIndex = inerIndex
            }
        }
        if swapIndex != index {
            temp_Array.swapAt(index, swapIndex)
        }
    }
    print(temp_Array)
}

//selectionShort([8,3,6,1,0,4,5,8,20,99,2])


func insertionSort(_ array: [Int]) {
    var temp_Array = array
    for index in 1..<temp_Array.count {
        for innerIndex in stride(from: index, to: 0, by: -1) {
            if temp_Array[innerIndex] < temp_Array[innerIndex - 1] {
                temp_Array.swapAt((innerIndex - 1), innerIndex)
            }
        }
    }
    print(temp_Array)
}

//insertionSort([8,3,6,1,0,4,5,8,20,99,2])

func bubbleSort(_ array: [Int]) {
    var temp_Array = array
    for _ in temp_Array {
        for index in 0..<(temp_Array.count - 1) {
            if temp_Array[index] > temp_Array[index + 1] {
                temp_Array.swapAt(index, (index + 1))
            }
        }
    }
    print(temp_Array)
}

//bubbleSort([8,3,6,1,0,4,5,8,20,99,2])

func mergeSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let splitIndex = input.count / 2
    let leftArray = mergeSort(Array(input[0..<splitIndex]))
    let rightArray = mergeSort(Array(input[splitIndex..<input.count]))
    
    return merge(leftPart: leftArray, rightPart: rightArray)
}

func merge(leftPart: [Int], rightPart: [Int]) -> [Int] {
    var sorted = [Int]()
    
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftPart.count && rightIndex < rightPart.count {
        if leftPart[leftIndex] < rightPart[rightIndex] {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
        } else if leftPart[leftIndex] > rightPart[rightIndex] {
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        } else {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        }
    }
    if leftIndex < leftPart.count {
        sorted.append(contentsOf: leftPart[leftIndex..<leftPart.count])
    } else if rightIndex < rightPart.count {
        sorted.append(contentsOf: rightPart[rightIndex..<rightPart.count])
    }
    
    return sorted
}

//mergeSort([8,3,6,1,0,4,5,20,99,2])

func quickSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let pivot = input.count / 2
    let element = input[pivot]
    
    let less = input.filter { $0 < element }
    let equall = input.filter { $0 == element }
    let greater = input.filter { $0 > element }
    
    return quickSort(less) + equall + quickSort(greater)
}
