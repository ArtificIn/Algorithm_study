//
//  PN_2775.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/30.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 부녀회장이 될테야 - https://www.acmicpc.net/problem/2775

// 피보나치 문제?
// 1층 3호 = 0층 1호 + 0층 2호 + 0층 3호
// 2층 3호 = 1층 1호 + 1층 2호 + 1층 3호
// k층 n호 = (k - 1)층
// 트리 혹은 dp 문제

func PN_2775(){
    let input = Int(readLine()!)!
    var apartment : [[Int]] = []
    var array : [Int] = []

    for i in 1...14 {
        array.append(i)
    }
    apartment.append(array)
    
    for i in 1..<15 {
        apartment.append(Array.init(repeating: 0, count: 14))
        for j in 0..<14 {
            apartment[i][j] = j == 0 ? 1 : apartment[i - 1][j] + apartment[i][j - 1]
        }
    }
    
    for _ in 0..<input {
        let k = Int(readLine()!)!
        let n = Int(readLine()!)!
        print(apartment[k][n - 1])
    }
}
