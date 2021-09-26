import UIKit

var str = "Hello, playground"

//https://leetcode-cn.com/problems/merge-two-sorted-lists/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dump = ListNode(-1);
        var tmp = dump;
        var left = l1;
        var right = l2;
        while (left != nil) && (right != nil) {
            if left!.val < right!.val {
                tmp.next = left;
                left = left?.next;
            }else{
                tmp.next = right;
                right = right?.next;
            }
            tmp = tmp.next!;
        }
        if left == nil {
            tmp.next = right;
        }
        if right == nil {
            tmp.next = left;
        }
        return dump.next;
    }
}

