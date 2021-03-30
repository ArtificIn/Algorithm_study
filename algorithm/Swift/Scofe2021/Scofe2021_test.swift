//
//  Scofe2021_test1.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/19.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 근묵자흑

func scofe_test1(value : String) {
    let firstInput = readLine()!
    let secondInput = readLine()!

    var (n, k, value, i) = (0, 0, 0, 0)
    var arrays : [Int] = []
    var splitArray : ArraySlice<Int> = []

    firstInput.split(separator: " ").forEach { item in
        if let i = Int("\(item)") {
            if n == 0 {
                n = i
            } else {
                k = i
            }
        }
    }
    
    secondInput.split(separator: " ").forEach { item in
        if let i = Int("\(item)") {
            arrays.append(i)
        }
    }

    arrays = arrays.sorted(by: <)

    while true {
        if i + k <= n {
            splitArray = arrays[i..<i+k]
        }
        i += k - 1
        value += 1
        
        if i + k >= n {
            splitArray = arrays[i..<n]
            value += 1
            break
        }
    }

    print(value)
}
