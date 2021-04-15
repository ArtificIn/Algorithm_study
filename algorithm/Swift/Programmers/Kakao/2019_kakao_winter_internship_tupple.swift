//
//  2019_kakao_winter_intership_tupple.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/15.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation
// 3:47 ~ 4:35
// 튜플 - https://programmers.co.kr/learn/courses/30/lessons/64065

// 개수가 1개인 것부터 차례로 배열에 넣기
func kakao_2019_winter_internship_tupple(_ s:String) -> [Int] {
    var value = s
    var array : [Int] = []
    value.removeFirst(2)
    value.removeLast(2)
    value.components(separatedBy: "},{")
        .map{ $0.components(separatedBy: ",").map { Int($0)!} }
        .sorted(by: { $0.count < $1.count })
        .forEach {
            $0.forEach {
                if !array.contains($0) {
                    array.append($0)
                }
            }
        }
    
    print(array)
    return array
    
//    for i in value {
//        var text = ""
//        var count = 0
//
//        for j in i {
//            let a = Character(extendedGraphemeClusterLiteral: j)
//            if a.isNumber {
//                text.append(a)
//            }
//
//            if a == "," || count == i.count - 1 {
//                if !text.isEmpty && !array.contains(Int("\(text)")!) {
//                    array.append(Int("\(text)")!)
//                    break
//                }
//                text = ""
//            }
//            count += 1
//        }
//    }
}
