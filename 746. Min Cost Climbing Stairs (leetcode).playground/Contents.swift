class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }

        var maxProfit = 0
        var minStock = prices[0]
        var minStockIndex = 0
        var maxStockIndex = 0
        for i in 0..<prices.count-1 {
            if minStock > prices[i+1] {
                minStock = prices[i+1]
                minStockIndex = i+1
            } else {
                maxStockIndex = i+1
            }
            if minStockIndex < i+1 {
                maxProfit = max(prices[maxStockIndex] - prices[minStockIndex] , maxProfit)
            }
        }
        
        return maxProfit
    }
}

Solution().maxProfit([7,1,5,3,6,4]) // O(n)^2


