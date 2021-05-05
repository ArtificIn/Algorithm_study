//
//  PN_14920.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/13.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 3n+1 수열 = https://www.acmicpc.net/problem/14920

func PN_14920(){
    let c1 = Int(readLine()!)!
    var cArray : [Int] = [c1]
    var i = 0
    
    while cArray[i] != 1 {
        cArray.append(cArray[i] % 2 == 0 ? cArray[i] / 2 : cArray[i] * 3 + 1)
        i += 1
    }
    print(i + 1)
}
