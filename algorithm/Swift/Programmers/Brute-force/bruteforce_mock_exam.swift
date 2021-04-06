//
//  mock exam.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/21.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// 모의고사 - https://programmers.co.kr/learn/courses/30/lessons/42840

func bruteforce_mock_exam_solution(_ answers:[Int]) -> [Int] {
    var person1 = [1,2,3,4,5]
    var person2 = [2,1,2,3,2,4,2,5]
    var person3 = [3,3,1,1,2,2,4,4,5,5]
    var total = [0,0,0], value = [Int]()
    
    for i in 0..<answers.count {
        if person1[i % person1.count] == answers[i] {
            total[0] += 1
        }
        if person2[i % person2.count] == answers[i] {
            total[1] += 1
        }
        if person3[i % person3.count] == answers[i] {
            total[2] += 1
        }
    }

    for i in 0..<total.count {
        if total[i] == total.max() {
            value.append(i+1)
        }
    }
    
    return value
}
