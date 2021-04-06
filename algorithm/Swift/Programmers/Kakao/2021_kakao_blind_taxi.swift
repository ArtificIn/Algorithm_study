//
//  2021_kakao_blind_taxi.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/06.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func kakao_2021_blind_taxi_solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
    let max = 100000 * 200
    var array = Array(repeating: Array(repeating: max, count: n), count: n)
    var minValue = max
    
    for f in fares {
        let n1 = f[0] - 1
        let n2 = f[1] - 1
        array[n1][n2] = f[2]
        array[n2][n1] = f[2]
    }
    
    // 플로이드 와샬 방법
    for k in 0..<n {
        for i in 0..<n {
            if array[i][k] == max || k == i {
                continue
            }
            for j in 0..<n {
                array[i][j] = i == j ? 0 : min(array[i][k] + array[k][j], array[i][j])
            }
        }
    }
    
    for i in 0..<n {
        minValue = min(minValue, array[s-1][i] + array[i][a-1] + array[i][b-1])
    }
    
    return minValue
}
