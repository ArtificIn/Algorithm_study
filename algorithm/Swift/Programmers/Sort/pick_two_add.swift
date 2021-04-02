//
//  pick_two_add.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func pick_two_add_solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            if !result.contains(numbers[i] + numbers[j]) {
                result.append(numbers[i] + numbers[j])
            }
        }
    }
    
    return Array(Set(result)).sorted()
}
