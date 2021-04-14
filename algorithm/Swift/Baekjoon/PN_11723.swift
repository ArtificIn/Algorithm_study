//
//  PN_11723.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/14.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 집합 - https://www.acmicpc.net/problem/11723
// 비트마스킹
func PN_11723(){
    let count = Int(readLine()!)!
    var bit : Int = 0
    
    for _ in 0..<count {
        let input = readLine()!.split(separator: " ")
        let number = Int(input.last!)
        
        switch input.first! {
        case "add":
            bit |= (1 << number!)
        case "remove":
            bit &= ~(1 << number!)
        case "check":
            print(((bit & (1 << number!)) != 0) ? 1 : 0 )
        case "toggle":
            bit ^= (1 << number!)
        case "all":
            bit = (1 << count+1) - 1
        case "empty":
            bit = 0
        default:
            break
        }
    }
}
