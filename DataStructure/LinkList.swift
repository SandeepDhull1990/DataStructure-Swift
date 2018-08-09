//
//  LinkList.swift
//  DataStructure
//
//  Created by sandeep dhull on 08/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Cocoa

struct LinkList<T> {
    
    var head:Node<T>?;
    var length:Int;
    
    init(){
        length = 0;
    }
    
    mutating func append(data: T) {
        let node = Node(data: data)
        if(head == nil) {
            head = node
        } else {
            var temp:Node? = head
            while(temp?.next != nil) {
                temp = temp?.next;
            }
            temp?.next = node;
        }
        length += 1;
    }
    
    func printList() {
        var temp:Node? = head
        
        while temp != nil{
            if let node = temp {
                print(temp!.data)
                temp = node.next
            }
        }
    }
    
    // Logic to reverse linked list
    mutating func reverse() {
        var temp:Node<T>? = head
        var reversedHead:Node<T>? = nil;
        
        while temp != nil {
            if let node = temp {
                // Reverse..
                temp = node.next;
        
                node.next = reversedHead
                
                reversedHead = node
            }
        }
        
        head = reversedHead;
    }
    
    // Remove element for list
    mutating func remove(position:Int = 0) {
        if(position >= length || position < 0) {
            print("Invalid position");
            return
        }
        
        if(position == 0) {
            // move head
            head = head?.next
        } else {
            // navigate to position and delete it
            var index:Int = 0;
            var temp:Node? = head;
            
            while(index < position-1) {
                temp = temp?.next;
                index += 1
            }
            temp?.next = temp?.next?.next;
        }
        length -= 1;
    }
    
}


class Node<T> : NSObject {
    var data:T;
    var next:Node?
    
    init(data:T) {
        self.data = data
    }
}
