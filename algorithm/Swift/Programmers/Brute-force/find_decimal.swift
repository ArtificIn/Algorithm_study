//
//  find_decimal.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/23.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

func find_decimal_solution(_ numbers:String) -> Int {
    // 종이 조각으로 만들 수 있는 모든 수를 구한다
    // 수를 나누어 소수를 판별한다
    // 종이 개수 만큼 자리 수가 늘어난다
    let list = numbers.map { Int("\($0)")! }
    
    // 1 7 17 71 = 4번
    // 1 2 3 12 13 21 23 31 32 123 132 213 231 312 321 = 뒤집는걸 반복하면 9번
    
    // 1 2 3
    // 12 13 21 23 31 32
    // 123 132 213 231 312 321
 
    if list.count == 1 {
        return 1
    }
    
    return 0
}
