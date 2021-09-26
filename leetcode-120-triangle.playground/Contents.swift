import UIKit

//https://leetcode-cn.com/problems/triangle/
class Solution {
//    func minimumTotal(_ triangle: [[Int]]) -> Int {
//        let n = triangle.count;
//        if n == 0 {return 0;}
//        // 生成n+1 n+1 的数组
//        var dp = Array(repeating: Array(repeating: 0, count: n+1), count: n+1);
//        for i in stride(from: n - 1, through: 0, by: -1){
//            for j in 0...i {
//                dp[i][j] = min(dp[i+1][j], dp[i+1][j+1]) + triangle[i][j];
//            }
//        }
//        return dp[0][0];
//    }
    // 不生成数组的方式
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var tmp = triangle;
        let n = triangle.count;
        if n == 0 {return 0;}
        if n == 1 {return triangle[0][0]};
        for i in stride(from: n - 2, through: 0, by: -1){
            for j in 0...i {
                tmp[i][j] = min(tmp[i+1][j], tmp[i+1][j+1]) + tmp[i][j];
            }
        }
        print(tmp);
        return tmp[0][0];
    }
}

Solution.init().minimumTotal([[2],[3,4],[6,5,7],[4,1,8,3]]);
