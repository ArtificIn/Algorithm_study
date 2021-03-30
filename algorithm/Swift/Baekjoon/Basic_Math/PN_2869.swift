//
//  PN_2869.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/30.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 달팰이는 올라가고 싶다 - https://www.acmicpc.net/problem/2869

// a * x - b * (x - 1) >= C
// ax - bx + b >= c
// x(a - b) >= c - b
// x >= c - b /a - b

func PN_2869(){
    let input = readLine()!.split(separator: " ")
    
    let a = Int(input[0])!
    let b = Int(input[1])!
    let c = Int(input[2])!
    let value = (c - b) / (a - b)
    (c - b) % (a - b) != 0 ? print(value + 1) : print(value)
}
