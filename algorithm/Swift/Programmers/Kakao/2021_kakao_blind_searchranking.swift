//
//  2021_Kakao_Blind_searchranking.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/05.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 순위 검색 - https://programmers.co.kr/learn/courses/30/lessons/72412

// 이진 탐색으로 풀어야한다
func kakao_2021_blin_searchranking_solution(_ info:[String], _ query:[String]) -> [Int] {
}

// 효율성 실패
func kakao_2021_blin_searchranking_solution2(_ info:[String], _ query:[String]) -> [Int] {
    var result : [Int] = Array.init(repeating: 0, count: query.count)
    
    for k in 0..<query.count {
        var qvalue = query[k].components(separatedBy: " ")
        qvalue.remove(at: 5)
        qvalue.remove(at: 3)
        qvalue.remove(at: 1)
        
        for i in 0..<info.count {
            let ivalue = info[i].components(separatedBy: " ")
            var passed = false
            
            if Int("\(qvalue[4])")! <= Int("\(ivalue[4])")! {
                for j in 0..<4 {
                    if !(qvalue[j] == ivalue[j] || qvalue[j] == "-") {
                        passed = false
                        break
                    }
                    passed = true
                }
                if passed == true {
                    result[k] += 1
                }
            }
        }
    }
    return result
}
