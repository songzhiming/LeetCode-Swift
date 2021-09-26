import UIKit

//var str = "Hello, playground"
//https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;
    }
}
// 递归
//class Solution {
//    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//        if head == nil || head?.next == nil {
//            return head;
//        }
//        head?.next = deleteDuplicates(head?.next);
//        if head?.val == head?.next?.val {
//            return head?.next;
//        }else{
//            return head;
//        }
//    }
//}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head;
        }
        var cur = head;
        while cur?.next != nil {
            if cur?.val == cur?.next?.val {
                cur?.next = cur?.next?.next
            }else{
                cur = cur?.next;
            }
        }
        return head;
    }
}

