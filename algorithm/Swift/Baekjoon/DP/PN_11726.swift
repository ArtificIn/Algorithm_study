//
//  PN_11726.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/09.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 2 X n 타일링 - https://www.acmicpc.net/problem/11726

func PN_11726() {
    let input = Int(readLine()!)!
    var dp = Array(repeating: 1, count: 1001)

    for i in 2..<input+1 {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
    
    print(dp[input])
}
