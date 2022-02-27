import UIKit


class Solution {
    func divisorGame(_ n: Int) -> Bool {
        if n == 0 || n == 1 {
            return false
        }
        let x = 2
        
        return n % x == 0 || divisorGame(n - x)
        
    }
}


Solution().divisorGame(100)
