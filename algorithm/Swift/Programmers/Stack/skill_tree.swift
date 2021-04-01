//
//  skill_tree.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func skill_tree_solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var count = 0
    
    for i in skill_trees {
        var result = ""
        
        for j in i {
            if skill.contains(j) {
                result += String(j)
            }
        }
        if skill.starts(with: result) {
            count += 1
        }
    }
    
    return count
}
