//
//  PN_1931.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/29.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 회의실 배정 - https://www.acmicpc.net/problem/1931

func PN_1931(){
    let n = Int(readLine()!)!
    var meetings : [(Int, Int)] = []
    var (max, count) = (0, 0)
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)!}
        meetings.append((input.first!, input.last!))
    }
    
    meetings.sort { return $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1}
    
    for i in meetings {
        if max <= i.0 {
            count += 1
            max = i.1
        }
    }

    print(count)
}
