//
//  network.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation


func network_solution(_ n : Int, _ computers:[[Int]]) -> Int {
    var depth = Array.init(repeating: false, count: n)
    var count = 0
    
    func dfs(_ visited: Int,_ link : [Int]) {
        depth[visited] = true // 방문 표시
        
        for j in 1..<link.count {
            if link[j] == 1 && depth[j] == false{
                dfs(j,computers[j])
            }
        }
    }
    
    for i in 0..<computers.count {
        if depth[i] == false {  // 방문한 적이 없는 경우
            dfs(i,computers[i])
            count += 1 // 단절된 네트워크임으로 총합에 1을 더해준다
        }
    }
    
    return count
}
