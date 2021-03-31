//
//  PN_2839.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/30.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 설탕 배달 - https://www.acmicpc.net/problem/2839

// 설탕을 15로 나누어 나머지가 3이 아닐 경우 -1을 반환하고
// 5로 나누어 최대값을 구한다 그 후 나머지를 3으로 나눈다

// 5로 나눈 몫을 하나씩 빼가며 3으로 나누어떨어지는 수 구하기
// 3으로 나눈 몫으로 구하기
func PN_2839() {
    let input = Int(readLine()!)!
    var min = -1
    var five = input / 5
    
    while five >= 0 {
        let i = input - five * 5
        if i % 3 == 0 {
            min = five + i / 3
            break
        }
        five -= 1
    }
    
    if input / 3 < min {
        min = input / 3
    }
    print(min)
}
