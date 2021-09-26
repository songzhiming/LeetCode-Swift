import UIKit

var str = "Hello, playground"

//https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


// 先算距离
//class Solution {
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//        var count = 1;
//        var cur = head;
//        while cur?.next != nil {
//            count = count + 1;
//            cur = cur?.next;
//        }
//        var new = head;
//        var index = count - n;
//        var last:ListNode? = nil;
//        while new != nil {
//            if index == 0 {
//                return new?.next;
//            }else if index == 1 {
//                last = new?.next?.next;
//                new?.next = last;
//                break;
//            }else{
//                index = index - 1;
//                new = new?.next;
//            }
//        }
//        return head;
//    }
//}

// 快慢指针
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        //
        let dump = ListNode(-1);
        dump.next = head;
        var slow = dump;
        var fast = dump;
        for _ in 0..<n {
            fast = fast.next!;
        }
        while fast.next != nil {
            fast = fast.next!;
            slow = slow.next!;
        }
        slow.next = slow.next?.next;
        return dump.next;
    }
}
