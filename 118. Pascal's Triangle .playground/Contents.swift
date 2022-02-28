import UIKit
/// 118. Pascal's Triangle

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
       
        var result:[[Int]] = []
        
        for i in 0..<numRows {
            result.append([])
            for j in 0..<(i+1) {
                if j == 0 || j == i {
                    result[i].append(1)
                } else {
                    result[i].append(result[i-1][j-1] + result[i-1][j])
                }
            }
        }
        return result
    }
}

Solution().generate(5)


//        [1]
//       [1,1]
//      [1,2,1]
//     [1,3,3,1]
//    [1,4,6,4,1]
