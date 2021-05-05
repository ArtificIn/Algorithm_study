//
//  PN_9421.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/05.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 소수상근수 - https://www.acmicpc.net/problem/9421

// 3:34 + 30 ~ 4:06

// 1. n보다 작은 소수를 구한다
// 2. 구한 소수를 대상으로 아래 과정을 반복해 소수상근수를 구한다
// 3. 각 자리를 수를 얻어 제곱한 후 더한다
// 4. 1이 아닐 경우 위 과정을 반복한다
// 5. 만일 같은 값이 반복될 경우 (끝나지 않을 경우)

func PN_9421(){
    let input = Int(readLine()!)!
    var array : [Int] = []
    var numbers : [Int] = []
    
    func getPrime(num: Int) -> Bool {
        for i in 2...num/2 {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    
    func calculate(start: Int, input: Int, returnValues : [Int]) {
        let value = "\(input)".map { Int("\($0)")!}
        var total = 0
        var returnValue = returnValues
        
        for i in 0..<value.count {
            total += value[i] * value[i]
        }

        if total == 1 {
            array.append(start)
        } else if !returnValues.contains(total) {
            returnValue.append(total)
            calculate(start: start, input: total, returnValues: returnValue)
        }
    }
    
    for i in 4...input {
        if getPrime(num: i) {
            numbers.append(i)
        }
    }
    for i in numbers {
        calculate(start: i, input: i, returnValues: [])
    }
    print(array)
}
