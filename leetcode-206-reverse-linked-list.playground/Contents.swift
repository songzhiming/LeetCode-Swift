import UIKit

var str = "Hello, playground"
//https://leetcode-cn.com/problems/reverse-linked-list/


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// 迭代
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var oldNode = head;
//        var newNode : ListNode? = nil;
//        while oldNode != nil {
//            //
//            let oldNextNode = oldNode?.next;
//            //
//            oldNode?.next =  newNode;
//            //
//            newNode = oldNode;
//            oldNode = oldNextNode;
//        }
//        return newNode;
//    }
//}

// 递归
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil{
            return head;
        }
        if head?.next == nil{
            return head;
        }
        let newNode = reverseList(head?.next);
        head?.next?.next = head;
        head?.next = nil;
        return newNode;
    }
}
