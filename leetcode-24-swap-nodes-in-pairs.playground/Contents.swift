import UIKit

var str = "Hello, playground"

//https://leetcode-cn.com/problems/swap-nodes-in-pairs/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head;
        }
        if head?.next == nil{
            return head;
        }
        var newNode = head?.next;
        head?.next = swapPairs(newNode?.next);
        newNode?.next = head;
        return newNode;
    }
}
