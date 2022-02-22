import UIKit

// tabulation technique
func factorial(_ n: Int) -> Int {
    
    var tracker: [Int] = Array.init(repeating: -1, count: n+1)
    
    tracker[0] = 1
    tracker[1] = 1
    
    for i in 2...n {
        tracker[i] = tracker[i-1] * i
    }
    
    return tracker[n]
}
print(factorial(5))

// memorization - top-Down technique

func memorizedFactorial(_ n: Int) -> Int {
    var tracker: [Int] = Array.init(repeating: -1, count: n+1)
    
    if n == 1 {
        return 1
    }
    tracker[n-1] = memorizedFactorial(n-1)
    return n * tracker[n-1]
}


print(memorizedFactorial(5))
