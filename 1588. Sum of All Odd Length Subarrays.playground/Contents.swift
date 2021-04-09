import UIKit

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0
       
        for i in 0..<arr.count{
            sum += arr[i]
            if i > arr.count - 2{continue}
            for j in (i+1)..<arr.count{
                if Array(arr[i...j]).count % 2 != 0{
                    print(arr[i...j])
                    var iterator = i
                    while(iterator != j+1){
                        sum += arr[iterator]
                        iterator += 1 
                    }
                }
            }
        }
        return sum
    }
}


let s = Solution()
s.sumOddLengthSubarrays([1,4,2,5,3])
