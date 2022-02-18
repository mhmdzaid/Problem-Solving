
// Problem link : https://leetcode.com/problems/add-two-numbers/

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var firstListIterator = l1
        var secondListIterator = l2
        let resultList = ListNode()
        var resultListIterator: ListNode? = resultList
        var remaining = 0
        while resultListIterator != nil {
            let sum = (firstListIterator?.val ?? 0) + (secondListIterator?.val ?? 0) + remaining
            if sum >= 10 {
               resultListIterator?.val = sum % 10
               remaining = sum / 10
            } else {
                resultListIterator?.val = sum
                remaining = 0
            }
            if firstListIterator != nil {
                firstListIterator = firstListIterator?.next
            }
            if secondListIterator != nil {
                secondListIterator = secondListIterator?.next
            }
            if firstListIterator == nil && secondListIterator == nil {
                if remaining != 0 {
                    resultListIterator?.next = ListNode(remaining)
                    resultListIterator = resultListIterator?.next
                }
                resultListIterator = nil
            } else {
                resultListIterator?.next = ListNode()
                resultListIterator = resultListIterator?.next
            }
        }
        
        return resultList
    }
}


var firstList: ListNode? = ListNode(2, ListNode(4, ListNode(3)))
let secondList = ListNode(5, ListNode(6, ListNode(4)))

var resultList = Solution().addTwoNumbers(firstList, secondList)

while resultList != nil {
    print("\(resultList?.val ?? 0 ) -> ")
    resultList = resultList?.next
}
