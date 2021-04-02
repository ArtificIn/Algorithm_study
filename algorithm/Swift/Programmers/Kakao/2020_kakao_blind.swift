//
//  2020_kakao_blind.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/02.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 문자열 압축 - https://programmers.co.kr/learn/courses/30/lessons/60057

func kakao_2020_blind_solution(_ s:String) -> Int {
    var complete = false
    var result = ""
    var repeating = 1
    var min = s.count

    func recursion(_ now: Int, _ range: Int) {
        let startRange = s.index(s.startIndex, offsetBy: now)
        let nowRange = s.index(startRange, offsetBy: range)
        
        if now + range + range <= s.count {
            let nextRange = s.index(nowRange, offsetBy: range)
            let nowString = s[startRange..<nowRange]
            let nextString = s[nowRange..<nextRange]
            
            if nowString == nextString {
                repeating += 1
            } else {
                if repeating != 1 {
                    result.append("\(repeating)")
                }
                result.append("\(nowString)")
                repeating = 1
            }
            recursion(now + range , range)
        }
        
        if !complete && now + range <= s.count && now + range + range >= s.count {
            complete = true
            if repeating != 1 {
                result.append("\(repeating)")
            }
            result.append("\(s[startRange...])")
        }
    }

    for j in 1...s.count / 2{
        recursion(0, j)
        
        if min > result.count {
            min = result.count
        }
        
        result = ""
        repeating = 1
        complete = false
    }

    return min
}
