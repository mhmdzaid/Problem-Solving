class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var jewelsCount : Int = 0
    for i in 0..<jewels.count{
        let index = jewels.index(jewels.startIndex, offsetBy: i)
        for j in 0..<stones.count{
            let jndex = stones.index(stones.startIndex, offsetBy: j)
            if jewels[index] == stones[jndex]{
                jewelsCount += 1
            }
        }
    }
    return jewelsCount
}
}
