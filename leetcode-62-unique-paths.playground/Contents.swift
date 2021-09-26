import UIKit

var str = "Hello, playground"
//https://leetcode-cn.com/problems/unique-paths/
class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        if m == 1 || n == 1 {
            return 1;
        }
        var dp = Array(repeating: Array(repeating: 1, count: n+1), count: m+1);
        for i in 1...n {
            dp[1][i] = 1;
        }
        for i in 1...m {
            dp[i][1] = 1;
        }
        for i in 2...m {
            for j in 2...n {
                dp[i][j] = dp[i-1][j] + dp[i][j-1];
            }
        }
        return dp[m][n];
    }
}

Solution.init().uniquePaths(1, 2);
