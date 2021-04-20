//
//  keys.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/20.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation
// 2:18 ~ 2:42
func keys_and_rooms_841(_ rooms: [[Int]]) -> Bool {
    var visit = Array(repeating: false, count: rooms.count)
    visit[0] = true
    
    func dps(start: Int, end: [Int]) {
        visit[start] = true
        for i in end {
            if visit[i] == false {
                dps(start: i, end: rooms[i])
            }
        }
    }
    
    dps(start: 0, end: rooms[0])
    
    return visit.contains(false) ? false : true
}


