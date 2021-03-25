class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
            guard !nums.isEmpty else{return 1}
         var set: Set<Int> = []
    var max: Int = -1000000
    for i in 0..<nums.count {
        set.insert(nums[i])
        max = nums[i] > max ? nums[i] : max
    }
    guard max >= 1 else{return 1}
    for i in 1...max {
        if !set.contains(i) {
            return i
        }
    }

    return max + 1
    }
}

