import UIKit

var str = "Hello, playground"
//https://leetcode-cn.com/problems/decode-ways/
class Solution {
    func numDecodings(_ s: String) -> Int {
        guard let number = Int(s) else { return 0 };
        var dp = [Int]();
        dp[0] = 0;
        for i in 1...26 {
            dp[i] = 2;
        }
        for i in 27...99 {
            dp[i] = 1;
        }
        if number < 100 {
            return dp[number];
        }
        for i in 100...number {
            var j = 0;
            while ((i - 10^j) >= 0) {
                dp[i] = dp[i - 10^j] + 1;
                j = j + 1;
            }
        }
        return dp[number];
    }
}
