//
//  2021_kakao_blind_renewalmenu.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/04.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 메뉴 리뉴얼 - https://programmers.co.kr/learn/courses/30/lessons/72411

func kakao_2021_blind_renewalMenu(_ orders:[String], _ course:[Int]) -> [String] {
    // 1. 모든 조합 구하기
    // 2. 조합 중에 공통적인 배열 (긴 코스 <- 짧은 코스) && (긴 코드.value == 짧은 코스.value)
    
    return []
}

func kakao_2021_blind_renewalMenu2(_ orders:[String], _ course:[Int]) -> [String] {
    var result : [String : Int] = [:]
    var answer : [String] = []
    
    func combination(origin: [Character], n : Int, value: String) {
        if value.count > 1 && course.contains(value.count) {
            result[value] = result.keys.contains(value) ? result[value]! + 1 : 1
        }
        
        for i in n+1..<origin.count {
            combination(origin: origin, n: i, value: "\(value)\(origin[i])")
        }
    }
    
    for order in orders {
        let menus : [Character] = order.map { $0 }.sorted()
        for i in menus.indices {
            combination(origin: menus, n: i, value: "\(menus[i])")
        }
    }
    
    for n in course {
        let max = result.filter { $0.key.count == n && $0.value > 1}.max { $0.value < $1.value }
        
        if let max = max {
            result.filter { $0.key.count == n}.forEach {
                if $0.value == max.value {
                    answer.append($0.key)
                }
            }
        }
    }
    
    print(answer.sorted())
    return answer.sorted()
}

