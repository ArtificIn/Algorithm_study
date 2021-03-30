//
//  PN_2493.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/28.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 탑 - https://www.acmicpc.net/problem/2493

func PN_2493(){
    let input = Int(readLine()!)!
    var numberInput = readLine()!.split(separator: " ")
    var numbers : [Int] = []
    var value : [Int] = []
    
    for _ in 0..<input {
        let value = Int("\(numberInput.first!)")!
        numbers.append(value)
        numberInput.removeFirst()
    }
  
    for i in stride(from: numbers.count-1, through: 0, by: -1) {
        var position = 0
        
        for j in stride(from: i, through : 0, by: -1) {
            print("number i = \(numbers[i]), numbersj = \(numbers[j])")
            if numbers[i] < numbers[j] {
                position = j + 1
                break
            }
        }
        
        value.append(position)
    }
    value = value.reversed()
    print(value)
}
