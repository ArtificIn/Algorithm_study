//
//  2021_kakao_blicd_newid.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/04.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 신규 아이디 추천 - https://programmers.co.kr/learn/courses/30/lessons/72410

func kakao_2021_blind_newid(_ new_id:String) -> String {
    var array = ""
    var i = 0
    var filtered = ""
    
    func checkPointPosition() {
        if filtered.first == "." {
            filtered.removeFirst()
        }
        if filtered.last == "." {
            filtered.removeLast()
        }
    }
    
    func checkMultiPoint(j: Int){
        let index = array.index(array.startIndex, offsetBy: j)
        if array[index] == "." {
            i += 1
            if j < array.count - 1{
                checkMultiPoint(j: j + 1)
            }
        }
    }
    
    for i in new_id {
        let a = i.lowercased()
        if a == "-" || a == "_" || a == "." || i.isNumber || i.isLetter {
            array.append(a)
        }
    }
    
    while i < array.count {
        let index = array.index(array.startIndex, offsetBy: i)
        filtered.append(array[index])
        
        if array[index] == "." && i + 1 < array.count {
            checkMultiPoint(j: i + 1)
        }
        i += 1
    }
    
    checkPointPosition()
   
    if filtered.count < 3 {
        if filtered.isEmpty {
            filtered.append("a")
        }
        let last = filtered.last!
        for _ in 0..<3 - filtered.count {
            filtered.append("\(last)")
        }
    }
    
    if filtered.count >= 16 {
        let range = filtered.index(filtered.startIndex, offsetBy: 15)
        filtered.removeSubrange(range...)
    }
    
    checkPointPosition()

    return filtered
}
