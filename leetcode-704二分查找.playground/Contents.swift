import UIKit

var str = "Hello, playground"

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0;
        var arr = [Int]();
        arr.removeFirst()
        arr.removeAll();
        var right = nums.count - 1;
        while left<=right {
            var mid = (left + right)/2;
            if nums[mid] == target {
                return mid;
            }else{
                if nums[mid] > target {//中间数大
                    right = mid-1;
                }else{
                    left = mid+1;
                }
            }
        }
        return -1;
    }
}

Solution().search([-1,0,3,5,9,12],13)


