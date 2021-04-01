//
//  2019_kakao_winter_intership.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/20.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

func kakao_2019_winter_solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var array : [[Int]] = board
    var basket : [Int] = [Int]()
    var count : Int = 0, v = 0
    
    for i in 0..<moves.count {
        for j in 0..<board.count {
            if array[j][moves[i]-1] != 0 {
                basket.append(array[j][moves[i]-1])
                array[j][moves[i]-1] = 0
                break
            }
        }
    }
    
    repeat {
        if basket[v] == basket[v+1]  {
            basket.remove(at: v+1)
            basket.remove(at: v)
            count += 2
            v = -1
        }
        v += 1
    } while basket.count-2 >= v
    
    return count
}
