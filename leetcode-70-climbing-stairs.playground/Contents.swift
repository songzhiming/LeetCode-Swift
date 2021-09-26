import UIKit

//https://leetcode-cn.com/problems/climbing-stairs/
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp : [Int] = Array(repeating: 0, count: n+1);
        dp[0] = 1;
        dp[1] = 1;
        for i in 2..<n+1 {
            dp[i] = dp[i-1] + dp[i-2];
        }
        print(dp[n]);
        return dp[n];
    }
}

Solution.init().climbStairs(2);
