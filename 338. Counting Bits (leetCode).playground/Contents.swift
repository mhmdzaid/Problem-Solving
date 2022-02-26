import Foundation

class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ans: [Int] = [Int].init(repeating: 0, count: n + 1)
        ans[0] = 0
        if n == 0 {
            return ans
        }
        ans[1] = 1
        
        for i in 2..<ans.count {
            ans[i] = onesCount(i)
        }
        return ans
    }
    
    private func onesCount(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        return n % 2 + onesCount(n / 2)
    }
}

print(Solution().countBits(0))
//
//// [0,1,1,2,1,2,2,3,1]
