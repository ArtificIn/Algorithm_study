//
//  PN2239.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/21.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 스도쿠 - https://www.acmicpc.net/problem/2239
// 4:47 ~

// 스도쿠 특징 : 각 행과 열에 중복된 수가 없다 + 3*3 영역에 중복되는 수가 없다
// 각 자리에는 들어갈 수 있는 후보 수가 있다.
// 스도쿠를 맞추는 방법은 후보수가 1인 것을 맞춰가며 빈 곳의 후보수를 줄여 퍼즐을 완성하는 방법이다
// 어려워!!

func PN_2239() {
    var originPuzzle : [[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    var crossPuzzle  : [[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    
    for i in 0..<9 {
        var input = readLine()!
        for j in 0..<input.count {
            let value = Int("\(input.removeFirst())")!
            originPuzzle[i][j] = value
            crossPuzzle[j][i] = value
        }
    }
    
    var sdocu : [([Int], Set<Int>)] = []
    let numbers : Set = [1,2,3,4,5,6,7,8,9]
    
    for i in 0..<9 {
        let width = originPuzzle[i].filter { $0 != 0 }
        
        for j in 0..<9 {
            if originPuzzle[i][j] == 0 {
                let height = crossPuzzle[j].filter { $0 != 0 }
                let items = numbers.subtracting(width).subtracting(height)
                sdocu.append(([i,j], items))
            }
        }
    }
    
//    while sdocu.count < 50 {
        for i in sdocu {
            if i.1.count == 1 {
                originPuzzle[i.0.first!][i.0.last!] = i.1.first!
                
                for item in stride(from: sdocu.count - 1, to: 0, by:  -1) {
                    if sdocu[item].0.first! == i.0.first && sdocu[item].1.contains(i.1.first!){
                        sdocu[item].1.remove(i.1.first!)
                    }
                    if sdocu[item].0.last! == i.0.last && sdocu[item].1.contains(i.1.first!) {
                        sdocu[item].1.remove(i.1.first!)
                    }
                }
                sdocu = sdocu.filter { !$0.1.isEmpty }
            }
        }
//    }
    
    originPuzzle.forEach { print($0) }
    
}
