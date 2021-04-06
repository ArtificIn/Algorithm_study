//
//  h-index.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/18.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// H-Index - https://programmers.co.kr/learn/courses/30/lessons/42747

func sort_h_index_solution(_ citations:[Int]) -> Int {
    let sorted = citations.sorted(by: >)
    for i in 0..<sorted.count {
        if i >= sorted[i] {
            return i
        }
    }
    return sorted.count
}
