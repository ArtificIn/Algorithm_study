//
//  stack_printer.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/06.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 프린터 - https://programmers.co.kr/learn/courses/30/lessons/42587?language=swift

func stack_printer_solution(_ priorities:[Int], _ location:Int) -> Int {
    var list : [(Int, Int)] = []
    var i = 1
    var count = 0
    
    for i in 0..<priorities.count {
        list.append((i, priorities[i]))
    }
    
    while count != list.count - 1 {
        if list[count].1 < list[i].1 {
            let temp = list[count]
            list.remove(at: count)
            list.append(temp)
            i = 1
            count = 0
            continue
        }
        if i == list.count - 1 {
            count += 1
            i = count
        }
        i += 1
    }
    
    return list.firstIndex(where: { $0.0 == location})! + 1
}
