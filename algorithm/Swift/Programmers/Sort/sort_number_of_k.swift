//
//  number of K.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/17.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// k 번째 수 - https://programmers.co.kr/learn/courses/30/lessons/42748

func sort_number_of_k_solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map{ key in array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1] }
}

