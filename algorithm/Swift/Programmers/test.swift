//
//  test.swift
//  algorithm
//
//  Created by 성다연 on 2021/01/11.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 자릿 수 더하기1
func solution00(_ n:Int) -> Int {
    let array = String(n).map { Int(String($0))! }
    var total = 0
    
    for i in array {
        total += i
    }
    
    return total
}

// 자릿 수 더하기2
func solution01(_ n : Int) -> Int {
    String(n).map { Int(String($0))! }.reduce(0) { $0 + $1 }
}

// 순열 검사 문제
func solution02(_ arr : [Int]) -> Bool {
    var array2: [Int] = []
    for i in 1..<arr.count + 1 {
        array2.append(i)
    }
    return arr.sorted() == array2 ? true : false
}

// 나머지 한 점
func solution03(_ v : [[Int]]) -> [Int] {
    var ans = [Int]()
    
    if v[0][0] == v[1][0] {
        ans.append(v[2][0])
    } else if v[0][0] == v[2][0] {
        ans.append(v[1][0])
    } else {
        ans.append(v[0][0])
    }
    
    if v[0][1] == v[1][1] {
        ans.append(v[2][1])
    } else if v[0][1] == v[2][1] {
        ans.append(v[1][1])
    } else {
        ans.append(v[0][1])
    }

    return ans
}

func solution04(_ land:[[Int]]) -> Int {
    var array = land
    var first = [0,0]
    
    // - 아래 반복
    // 다음 열에서 같은 자리의 값을 제외한 최대 값을 찾늗다
    // 수를 합한다
    
    for i in 0..<array.count {
        var value = 0
        
        for j in 0..<array[i].count {
            if i != 0 {
                array[i][first[1]] = 0
            }
            
            if value < array[i][j] {
                value = array[i][j]
                first[1] = j
            }
        }
        first[0] += value
    }

    return first[0]
}

func solution04_1(_ land:[[Int]]) -> Int{
    var copyLand = land
    
    for i in 1 ..< copyLand.count{
//        copyLand[i][0] += max(copyLand[i - 1][1], copyLand[i - 1][2], copyLand[i - 1][3])
//        copyLand[i][1] += max(copyLand[i - 1][0], copyLand[i - 1][2], copyLand[i - 1][3])
//        copyLand[i][2] += max(copyLand[i - 1][0], copyLand[i - 1][1], copyLand[i - 1][3])
//        copyLand[i][3] += max(copyLand[i - 1][0], copyLand[i - 1][1], copyLand[i - 1][2])
    }
    print(copyLand.last!.max()!)
    
    
    return copyLand.last!.max()!
}
