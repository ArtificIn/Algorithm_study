//
//  PN_11047.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/29.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 동전 0 - https://www.acmicpc.net/problem/11047
// k원을 동전 값으로 나누었을 때 몫이 0 이상, 가장 적은 몫 구해서 값 빼주기
// 이를 0이 될 때까지 반복

func PN_11047(){
    let input = readLine()!.split(separator: " ")
    var k = Int(input.last!)!
    var coins : [Int] = []
    var count = 0
    
    for _ in 0..<Int(input.first!)! {
        coins.append(Int(readLine()!)!)
    }
    
    while k != 0 {
        let a = k / coins.last!
        if a > 0 {
            count += a
            k -= a * coins.last!
        }
        coins.removeLast()
    }
    print(count)
}
