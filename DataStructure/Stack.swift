//
//  Stack.swift
//  DataStructure
//
//  Created by sandeep dhull on 09/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Foundation

struct Stack<T>{

    var top:Node<T>?
    
    // Push, Pop
    
    mutating func push(data : T) {
        let newNode : Node<T> = Node(data:data);
        
        if(top == nil) {
            // Assign top to new node
            top = newNode;
        } else {
            newNode.next = top;
            top = newNode;
        }
    }
    
    mutating func pop() -> T? {
            let data:T? = top?.data;
            top = top?.next
            return data;
    }
    
    func peek() -> T? {
        return top?.data;
    }
    
    func length() -> Int{
        var size:Int = 0;
        
        var temp:Node? = top
        
        while temp != nil{
            if let node = temp {
                size += 1;
                temp = node.next
            }
        }
        return size;
    }
    
    func printStack() {
        var temp:Node? = top
        
        while temp != nil{
            if let node = temp {
                print(temp!.data)
                temp = node.next
            }
        }
        
    }
    
}
