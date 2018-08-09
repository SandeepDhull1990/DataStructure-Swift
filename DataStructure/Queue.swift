//
//  Queue.swift
//  DataStructure
//
//  Created by sandeep dhull on 09/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Cocoa

struct Queue<T> {

    var list: [T]?
    
    init() {
        list = [T]();
    }
    
    mutating func enqueue(data :T) {
        list?.append(data)
    }
    
    mutating func dequeue() -> T? {
        if(!list!.isEmpty) {
            return list!.remove(at: 0)
        }
        return nil;
    }
    
    func printQueue() {
        for t in list! {
            print(t)
        }
    }
    
}
