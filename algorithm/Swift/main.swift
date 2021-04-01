//
//  main.swift
//  algorithm
//
//  Created by 성다연 on 2020/11/25.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// [0, 4, 3, 1, 1, 3, 2, 4]
// [0, 4, 3, 1, 2, 1, 5, 4, 1, 2]
// 뽑힌 인형 가져오고 만약 같을 경우 수를 더해주고 삭제해주기

func kakao_solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var list = board
    var stack : [Int] = [0]
    var count = 0
    
    for i in moves {
        
        for y in 0..<list.count {
            if list[y][i - 1] != 0 {
                if stack.isEmpty {
                    stack.append(list[y][i-1])
                    break
                }
                else {
                    if stack.last! != list[y][i-1] {
                        stack.append(list[y][i-1])
                    } else {
                        count += 2
                        stack.removeLast()
                    }
                    list[y][i-1] = 0
                    break
                }
            }
        }
    }
    
    return count
}

print(kakao_solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))
