import UIKit

//https://leetcode-cn.com/problems/perfect-squares/

// dp[i] = min[dp[i],dp[i-j]+1];
class Solution {
    func numSquares(_ n: Int) -> Int {
        var dp = Array(repeating: -1, count: n+1);
        dp[0] = 0;
        for i in 1...n {
            var j = 2;
            // 最坏情况是 i = 1+ 1 + 1+ ...   n个1
            dp[i] = i;
            while i-j*j >= 0 {
                dp[i] = min(dp[i], dp[i-j*j]+1);
                j = j + 1;
            }
        }
        return dp[n];
    }
}
Solution.init().numSquares(12);
