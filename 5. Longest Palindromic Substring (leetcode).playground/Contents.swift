class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {

        if nums.isEmpty {
            return 0
        }
        
        var sum = nums[0]
        var result = sum
        
        for i in 1..<nums.count {
            sum = nums[i] + sum > nums[i] ? nums[i] + sum : nums[i]
            result = max(result, sum)
        }
        return result
    }
}
//  [5,4,-1,7,8]
Solution().maxSubArray([5,4,-1,7,8])
