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

