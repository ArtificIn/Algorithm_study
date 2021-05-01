//
//  Line_solution3.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 5초동안 노출
// (시작시간 - 대기시간 ) * 손해 비용

// 1. 순서 정해주기
// 2. return 값에 밀린 시작시간 * 손해시간

func line_solution3(_ ads:[[Int]]) -> Int {
    var array = ads.sorted(by : {return $0.first! == $1.first! ? $0.last! > $1.last! : $0.first! < $1.first! })
    var wait = 0
    var timer = array[0].first!
    
    array.removeFirst()
    
    while !array.isEmpty {
        timer += 5
        array.sort(by: { return $0.first! <= timer ? $0.last! > $1.last! : $0.first! < $1.first! })
        
        let a = array.removeFirst()
        wait += ( timer - a.first! ) * a.last!
    }
       
    return wait
}
