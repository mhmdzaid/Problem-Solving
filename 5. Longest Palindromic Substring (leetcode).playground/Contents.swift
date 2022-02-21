
class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty {
            return ""
        }
        
        var palindromes: [String] = []
        var maxLength = 0
        for i in 0..<(s.count) {
            var palindrome = ""
            for j in i..<s.count {
                 var isPalindrome = true
                 palindrome += "\(s[j])"
                for k in 0..<(j - i + 1) / 2 {
                    if s[k + i] != s[j-k] {
                        isPalindrome = false
                    }
                }
                if isPalindrome {
                    print(palindrome)
                    palindromes.append(palindrome)
                    maxLength = max(maxLength, j - i + 1)
                }
            }
        }
        var longest = ""
        for palindrome in palindromes {
            if palindrome.count > longest.count {
                longest = palindrome
            }
        }
        return longest
    }
}
extension StringProtocol {
    subscript(_ offset: Int) -> Character {
        return self[index(startIndex, offsetBy: offset)]
    }
}

Solution().longestPalindrome("babad")
