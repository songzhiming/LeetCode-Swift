import UIKit

var str = "Hello, playground"

//https://leetcode-cn.com/problems/intersection-of-two-linked-lists/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// hash

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var hash = Set<ListNode>();
        var current = headA;
        while current != nil {
            
        }
    }
}
