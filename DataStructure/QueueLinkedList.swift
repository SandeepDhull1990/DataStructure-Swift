//
//  QueueLinkedList.swift
//  DataStructure
//
//  Created by sandeep dhull on 09/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Cocoa

struct QueueLinkedList<T> {
    
    var front: Node<T>?
    var rear: Node<T>?
    
    mutating func enqueue(data : T) {
        if (front != nil) {
            let newNode = Node(data: data);
            rear?.next = newNode;
            rear = newNode;
        } else {
            // Front pointer is null, so it the first element
            let initialNode = Node(data: data);
            front = initialNode;
            rear = initialNode;
            
        }
    }
    
    
    mutating func dequeue() -> T? {
        if(front != nil) {
            let data = front!.data;
            front = front?.next;
            return data
        } else {
            return nil
        }
    }
    
    func printQueue() {
        var temp:Node? = front
        
        while temp != nil{
            if let node = temp {
                print(temp!.data)
                temp = node.next
            }
        }
    }
    
    func length() -> Int{
        var size:Int = 0;
        
        var temp:Node? = front
        
        while temp != nil{
            if let node = temp {
                size += 1;
                temp = node.next
            }
        }
        return size;
    }
    
}
