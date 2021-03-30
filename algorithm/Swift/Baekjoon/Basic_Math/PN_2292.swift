//
//  PN_2292.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/28.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 벌집 - https://www.acmicpc.net/problem/2292

// 1 -> 7 -> 19 -> 37 -> 61
// 1 -> 6 -> 18 -> 36 -> 60
// 1 -> 6 -> (6) + 12 -> (6 + 12) + 18 -> (6 + 12 + 18) + 24
// 6(n - 1 + n - 2 .. n - n)

func PN_2292() {
    let input = Int(readLine()!)!
    var arrays : [Int] = [1]
    var i = 1
    
    while true {
        let newValue = 6 * i + arrays[i - 1]
        if input >= arrays[i - 1] && input <= newValue {
            break
        }
        
        arrays.append(newValue)
        i += 1
    }
    
    print(input == 1 ? 1 : i + 1)
}
