//
//  main.swift
//  DataStructure
//
//  Created by sandeep dhull on 08/08/18.
//  Copyright © 2018 sandeep dhull. All rights reserved.
//

import Foundation


var list:LinkList<String> = LinkList();

list.append(data: "Sandeep");
list.append(data: "Dhull");
list.append(data: "is A good boy");
list.append(data: "He works in sigma");
list.append(data: "ITC");
list.append(data: "India");

list.printList()
print("Lenght is  \(list.length)");

list.reverse();

print("\n \n after Reversing \n \n")

list.printList()

print("Lenght is  \(list.length)");


list.remove(position: 6)
