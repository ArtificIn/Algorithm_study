//
//  PN_1978.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/30.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 1000 이하 소수를 구해놔 대조하기
func PN_1978() {
    func prime(num : Int) -> Bool {
        var j = 1
        if num < 2 {
            return false
        }
        for i in stride(from: 2, to: num, by: j * j) {
            j = i
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    
    let input = Int(readLine()!)!
    var value = readLine()!.split(separator: " ")
    var total = 0
    
    for _ in 0..<input {
        let v = Int("\(value.first!)")!
        if prime(num: v) == true {
            total += 1
        }
        value.removeFirst()
    }
    
    print(total)
}

