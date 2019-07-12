// 简单排序【插入、冒泡、选择】(升序)

let array:[Int] = [2,5,3,1,7,4,9,8,6,20,10,11,13,12,19]

// 插入排序
extension Array where Element == Int {
    func insertionSort() -> [Element] {
        if self.count <= 0 {
            return self;
        }
        
        var resultArr : [Element] = self
        
        for index in 0..<resultArr.count {
            var compareIndex = index - 1
            let value = resultArr[index]
            
            while compareIndex >= 0 {
                let compareValue = resultArr[compareIndex]
                if value < compareValue {
                    resultArr[compareIndex + 1] = compareValue
                    resultArr[compareIndex] = value
                } else {
                    break
                }
                compareIndex -= 1
            }
        }
        
        return resultArr
    }
}

array.insertionSort()

// 冒泡排序
extension Array where Element == Int {
    func bubbleSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var resultArr : [Element] = self
        var temp = 0
        
        for i in 0..<resultArr.count - 1 {
            for j in 0..<resultArr.count - 1 - i {
                if resultArr[j+1] < resultArr[j] {
                    temp = resultArr[j]
                    resultArr[j] = resultArr[j+1]
                    resultArr[j+1] = temp
                }
            }
        }

        return resultArr
    }
}

array.bubbleSort()

// 选择排序
extension Array where Element == Int {
    func selectionSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var resultArr: [Element] = self
        var startIndex = 0
        
        for _ in 0..<count - 1 {
            var miniIndex = startIndex
            for i in startIndex..<count {
                if resultArr[i] < resultArr[miniIndex] {
                    miniIndex = i
                }
            }
            
            if miniIndex != startIndex {
                let temp = resultArr[miniIndex]
                resultArr[miniIndex] = resultArr[startIndex]
                resultArr[startIndex] = temp
            }
            
            startIndex += 1
        }
        
        return resultArr
    }
}

array.selectionSort()

