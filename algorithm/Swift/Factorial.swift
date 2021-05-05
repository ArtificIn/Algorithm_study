//
//  Factorial.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/03.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func factorial(_ num: Int) -> Int {
    var n = num
    var result = 1
    while n > 1 {
        result *= n
        n -= 1
    }
    
    return result
}
