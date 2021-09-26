import UIKit

//https://leetcode-cn.com/problems/integer-break/
class Solution {
    func integerBreak(_ n: Int) -> Int {
        //递归超时
//        if n == 1 { return 1; }
//        var result = -1;
//        for i in 1..<n {
//            result = max(result, max(i*(n-i), i*integerBreak(n-i)));
//        }
//        return result;
        var dp = Array(repeating: -1, count: n+1);
        dp[1] = 1;
        for i in 2...n {
            for j in 1...i-1 {
                // 求解dp[i] i = j*
                dp[i] = max(dp[i], max(j*(i-j), j*dp[i-j]));
            }
        }
        return dp[n];
    }
    
}

Solution.init().integerBreak(10);

