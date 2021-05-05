//
//  PN_14888.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/23.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 연산자 끼워넣기 - https://www.acmicpc.net/problem/14888
// 1. 수의 순서는 고정되어있다
// 2. 주어진 연산자를 가지고 계산해야한다
// 3. 식의 계산은 연산자 우선순위를 무시하고 앞에서부터 진행한다
// 4. 식의 결과가 최대인 것과 최소인 것을 구해라
// 연산자 순서 = + - * /

// 연산자 조합으로 구하기
func PN_14888() {
    let input = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int("\($0)")}
    var operators = readLine()!.split(separator: " ").map { Int("\($0)")}
    var (max, min) = (-1_000_000_000, 1_000_000_000)
    
    func dps(nextNumber: Int, index: Int) {
        if input == index {
            max = max > nextNumber ? max : nextNumber
            min = min < nextNumber ? min : nextNumber
        }
        
        for i in 0..<4 {
            if operators[i]! > 0 {
                operators[i]! -= 1
                var value = 0
                switch i {
                case 0:
                    value = nextNumber + numbers[index]!
                case 1:
                    value = nextNumber - numbers[index]!
                case 2:
                    value = nextNumber * numbers[index]!
                default:
                    value = nextNumber / numbers[index]!
                }
                
                dps(nextNumber: value, index: index+1)
                operators[i]! += 1
            }
        }
    }
    
    dps(nextNumber: numbers[0]!, index: 1)
    print(max, min)
}
