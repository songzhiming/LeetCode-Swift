import UIKit

//https://leetcode-cn.com/problems/capacity-to-ship-packages-within-d-days/
//二分查找
class Solution {
    func shipWithinDays(_ weights: [Int], _ D: Int) -> Int {
        // right 一次全部送完
        var right = 0;
        // 最小可能 就是 最大的重量
        var left = 0;
        for i in weights {
            right = i + right;
            left = max(left, i);
        }
        while left < right {
            // 中间运载能力
            let mid = (left + right)/2;
            var day = 1;
            var current = 0;
            for i in weights {
                current = current + i;
                if current > mid {
                    day = day + 1;
                    current = i;// 变成新的
                }
            }
            if day > D {//用的天数多了 运载能力需要+
                left = mid + 1;
            }else{
                right = mid;
            }
        }
        return left;
    }
}
Solution.init().shipWithinDays([1,2,3,4,5,6,7,8,9,10], 5)
