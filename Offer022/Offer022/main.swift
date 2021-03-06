//
//  main.swift
//  Offer022
//
//  Created by chengz on 2022/3/3.
//

import Foundation

/*
 输入一个链表，输出该链表中倒数第k个节点。为了符合大多数人的习惯，本题从1开始计数，即链表的尾节点是倒数第1个节点。

 例如，一个链表有 6 个节点，从头节点开始，它们的值依次是 1、2、3、4、5、6。这个链表的倒数第 3 个节点是值为 4 的节点。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

print("Hello, World!")
//  Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var p1 = head
        var p2 = head
        var k1 = k
        while k1>0 && p2 != nil {
            p2 = p2?.next
            k1 -= 1
        }
        
        while p2 != nil {
            p1 = p1?.next
            p2 = p2?.next
        }
        return p1
    }
}
