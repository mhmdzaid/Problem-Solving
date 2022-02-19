import UIKit

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
       
        if nums1.isEmpty && nums2.isEmpty {
            return 0
        }
        
        let sortedArray = merge(nums1, nums2)
        let sortedArrayCount = sortedArray.count
        let middleElementIndex = (sortedArrayCount / 2 )
        if sortedArrayCount % 2 == 0 {
           let sumOfMiddleElements = sortedArray[middleElementIndex] + sortedArray[middleElementIndex - 1]
           return Double(sumOfMiddleElements) / 2
        } else {
           return Double(sortedArray[middleElementIndex])
        }
    }
    
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [Int] = []
      
      while leftIndex < left.count && rightIndex < right.count {

          if left[leftIndex] < right[rightIndex] {
              orderedArray.append(left[leftIndex])
              leftIndex += 1
          } else {
              orderedArray.append(right[rightIndex])
              rightIndex += 1
          }
      }

      while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
      }

      while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
      }
      
      return orderedArray
    }
}

Solution().merge([1,2,5,8], [3,4,10])
Solution().findMedianSortedArrays([1], [3,4,10])
