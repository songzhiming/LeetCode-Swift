import UIKit

var str = "Hello, playground"
//https://leetcode-cn.com/problems/minimum-path-sum/
class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var tmp = grid;
        let m = grid[0].count;
        let n = grid.count;
        for i in 1..<m {
            tmp[0][i] = tmp[0][i-1] + grid[0][i];
        }
        for i in 1..<n {
            tmp[i][0] = tmp[i-1][0] + grid[i][0];
        }
        for i in 1..<n {
            for j in 1..<m {
                tmp[i][j] = min(tmp[i-1][j], tmp[i][j-1]) + grid[i][j];
            }
        }
        return tmp[n-1][m-1];
    }
}
Solution.init().minPathSum([[1,3,1],[1,5,1],[4,2,1]]);
