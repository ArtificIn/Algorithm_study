//
//  2020_kakao_intership.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/02.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

// 수식 최대화 - https://programmers.co.kr/learn/courses/30/lessons/67257

// 음수를 절대값으로 만들었을 때 가장 큰 값이 될 수 있다
// 조합을 통해 모든 연산자의 우선순위를 지정, 절대값으로 바꾼 다음 최대 값을 뽑아낸다
func kakao_2020_intership_solution(_ expression:String) -> Int64 {
    var value = expression
    var list : [String] = []
    var calculate : [String] = []
    var calculateList : [[String]] = []
    var lastIndex = value.startIndex
    
    // 문자열을 수와 기호로 바꾸고 기호를 뽑아낸다
    for i in 0..<value.count - 1 {
        let index = value.index(value.startIndex, offsetBy: i)
        
        if value[index] == "*" || value[index] == "-" ||
            value[index] == "+" || value[index] == "/" {
            if !calculate.contains("\(value[index])") {
                calculate.append("\(value[index])")
            }
            list.append("\(value[lastIndex..<index])")
            list.append("\(value[index])")
            lastIndex = value.index(value.startIndex, offsetBy: i + 1)
        }
    }
    list.append("\(value[lastIndex...])")
    
    // 조합을 구한다
    // - + * - : 1
    // - * + - : 2
    // * - + * : 1
    // * + - * : 2
    // + * - + : 2
    // + - *
     
    
    for i in 0..<calculate.count {
        var calculates : [String] = [calculate[i]]
        
        for j in 1..<calculate.count {
            calculates.append(calculate[j])
        }
        calculateList.append(calculates)
    }
    
    print(calculate)
    print(calculateList)
    
    
    // 조합한 배열 순서대로 기호를 찾아 계산한다
    
    return 0
}
