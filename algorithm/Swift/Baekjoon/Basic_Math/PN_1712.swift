//
//  PN_1712.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/28.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 손익분기점 - https://www.acmicpc.net/problem/1712

func PN_1712(){
    var input = readLine()!.split(separator: " ")
    var (A, B, C, X) = (0, 0, 0, 0)

    A = Int("\(input.first!)")!
    input.removeFirst()
    B = Int("\(input.first!)")!
    C = Int("\(input.last!)")!

    X = B < C ? A / (C - B) : -1

    while true && B < C {
        X += 1
        if A + (B * X) < C * X {
            break
        }
    }

    print(X)
}
