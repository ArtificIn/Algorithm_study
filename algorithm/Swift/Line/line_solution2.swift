//
//  line_solution2.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation


func line_solution2(_ array:[Int]) -> [Int] {
    var answer : [Int] = []
    var max = -1
    
    for i in 0..<array.count {
        answer.append(i)
        print("i =",i,answer)
        for j in i..<array.count {
            if max < array[j] {
                max = array[j]
            }
            if i != j && array[i] < array[j] {
                answer[i] = j
                break
            }
        }
        
    }
    print("max =",max)
    
    for i in 0..<answer.count {
        if max == array[i] {
            answer[i] = -1
        }
    }
    
    print(answer)
    return answer
}

//print(line_solution2([3, 5, 4, 1, 2]))
