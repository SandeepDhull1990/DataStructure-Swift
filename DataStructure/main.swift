//
//  main.swift
//  DataStructure
//
//  Created by sandeep dhull on 08/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Foundation


var list:LinkList<String> = LinkList();

print(" \n \n")

list.append(data: "Sandeep");
list.append(data: "Dhull");
list.append(data: "is a Mobile application developer");
list.append(data: "He works in sigma");
list.append(data: "ITC,");
list.append(data: "India.");
list.append(data: "He likes working on Android");
list.append(data: "and consider iOS to be easy");

list.printList()
print("Length is  \(list.length)");

list.reverse();

print("\n \n after Reversing \n \n")

list.printList()

print("Length is  \(list.length)");

list.reverse();


// Find something in list


list.remove(position: 3)
print("\n \n After removing Length is  \(list.length) \n \n");
list.printList()


print(" \n ********************  Queue   ****************** \n")

var queue : QueueLinkedList<String> = QueueLinkedList()

queue.enqueue(data: "Sandeep")

queue.enqueue(data: "Dhull")

queue.enqueue(data: "is")

queue.enqueue(data: "good")

queue.enqueue(data: "developer")

queue.enqueue(data: "working")

queue.enqueue(data: "at")

queue.enqueue(data: "Sigma")

queue.printQueue()

print("Size is \(queue.length())");

print("Dequeued element is \(queue.dequeue()!)");
print("Dequeued element is \(queue.dequeue()!)");

print("\n After dequeuing ************ \n")

queue.printQueue()

print("Size is \(queue.length())");


print(" \n ********************  Stack   ****************** \n")

var stack : Stack<String> = Stack()

stack.push(data: "Sandeep 1")
stack.push(data: "Dhull")
stack.push(data: "is")
stack.push(data: "good")
stack.push(data: "developer")
stack.push(data: "working")
stack.push(data: "at")
stack.push(data: "Sigma End")

stack.printStack()

print("\n");

print("Dequeued element is \(stack.pop()!)\n");

print("Peeked element is \(stack.peek()!)\n");

print("Dequeued element is \(stack.pop()!)b");

stack.printStack()

