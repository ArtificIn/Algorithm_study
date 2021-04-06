//
//  skill_develop.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 기능 개발 - https://programmers.co.kr/learn/courses/30/lessons/42586

func stack_skill_develop_solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result : [Int] = []
    var (count, max) = (1, 0)
    
    for i in 0..<progresses.count {
        let caculate = (100 - progresses[i]) / speeds[i]
        let n = (100 - progresses[i]) % speeds[i] != 0 ? caculate + 1 : caculate
       
        if i == 0 {
            max = n
            continue
        }
        if max >= n {
            count += 1
        } else {
            max = n
            result.append(count)
            count = 1
        }
    }
    result.append(count)
    
    return result
}

