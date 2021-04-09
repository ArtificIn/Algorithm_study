//
//  heap_diskcontroller.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/08.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 디스크 컨트롤러 - https://programmers.co.kr/learn/courses/30/lessons/42627?language=swift

func heap_diskcontroller_solution(_ jobs:[[Int]]) -> Int {
    var job = jobs.sorted(by: { $0.last! < $1.last! })
    var total = 0
    var timer = 0
    var i = 0
    
    while !job.isEmpty {
        let min = job.sorted(by: { $0.first! < $1.first!}).first!.first!
        
        if timer < min {
            timer = min
        }
        if job[i].first! <= timer {
            total += job[i].last! + timer - job[i].first!
            timer += job[i].last!
            job.remove(at: i)
            i = 0
        } else {
            if job.count == 1 {
                timer = job.first!.first!
            }
            i += 1
        }
        if i > job.count - 1 {
            i = 0
        }
    }

    return total / jobs.count
}
