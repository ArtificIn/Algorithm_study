//
//  target_number.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation


func target_number_solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(_ depth : Int, _ sum : Int){
        if depth == numbers.count {
            if sum == target {
                count += 1
            }
            return
        }
        
        dfs(depth + 1, sum + numbers[depth])
        dfs(depth + 1, sum - numbers[depth])
    }

    dfs(0,0)
    
    return count
}
