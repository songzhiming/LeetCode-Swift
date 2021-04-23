import UIKit

//https://leetcode-cn.com/problems/3sum/
//三数之和 = 0；
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let n = nums.count;
        //小于三个
        if  n < 3 { return [];}
        //排序
        let sortNums = nums.sorted();
        var res = [[Int]]();
        //
        for (index,value) in sortNums.enumerated(){
            if index > n - 1 { break; }// 只排序到倒数第三个
            if value > 0 { break; }// 如果第一个大于0,后面的数都比他大
            if index > 0,sortNums[index - 1] == value { continue;}//去掉重复情况
            var second = index + 1;
            var third = n - 1;
            while second < third {
                let num = value +  sortNums[second] + sortNums[third];
                if num > 0 {//第三个左移
                    third = third - 1;
                }else if num < 0 {//第二个数右移
                    second  = second + 1;
                }else{
                    // 加到 结果，内缩
                    res.append([value,sortNums[second],sortNums[third]]);
                    second = second + 1;
                    third = third - 1;
                    // 去除掉 第二个和第三个也不重复
                    while sortNums[second] == sortNums[second - 1],second < third {
                        second  = second + 1;
                    }
                    while sortNums[third] == sortNums[third + 1],second < third {
                        third = third - 1;
                    }
                }
            }
        }
        return res;
    }
}
Solution.init().threeSum([-1,0,1,2,-1,-4]);

