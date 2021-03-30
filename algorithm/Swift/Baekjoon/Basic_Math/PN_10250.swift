//
//  PN_10250.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/30.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// ACM 호텔 - https://www.acmicpc.net/problem/10250

func PN_10250(){
    let t = Int(readLine()!)!
    var array : [String] = []

    for _ in 0..<t {
        let input = readLine()!.split(separator: " ")
        let h = Int(input[0])! // 층
        let n = Int(input[2])! // 손님
        let f = n % h
        var r = n / h
        
        if f != 0 {
            r += 1
        }
        let floor = f == 0 ? "\(h)" : "\(f)"
        let room = r < 10 ? "0\(r)" : "\(r)"
        
        array.append(floor+room)
    }
    
    array.forEach { item in
        print(item)
    }
    
    // testCase : 2 5 10
}
