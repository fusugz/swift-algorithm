// 两数之和
/*
 给定一个整数数组 nums 和一个目标值 target，
 请你在该数组中找出和为目标值的那两个整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var resultNums = [Int]()
        var contaioner = Set<Int>()
        
        for (index, num) in nums.enumerated() {
            let match = target - num
            
            if contaioner.contains(match) {
                let index1 : Int = nums.firstIndex(of: match) ?? 0
                resultNums.append(index1)
                resultNums.append(index)
            }
            contaioner.insert(num)
        }
        
        return resultNums
    }
}

let nums: [Int] = [2, 7, 11, 15]
let target: Int = 18

let solu : Solution = Solution.init()
solu.twoSum(nums, target)


