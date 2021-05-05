//
//  Permutation.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/03.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation


func permutation<T>(_ array:[T], _ n:Int) {
    if n == 0 {
        print(array)
    } else {
        var a = array
        permutation(a, n-1)
        
        for i in 0..<n {
            a.swapAt(i, n)
            permutation(a, n - 1)
            a.swapAt(i, n)
        }
    }
}

/**
 ["a", "b", "c"]
 ["b", "a", "c"]
 ["c", "b", "a"]
 ["b", "c", "a"]
 ["a", "c", "b"]
 ["c", "a", "b"]
 */

//let letters = ["a", "b", "c"]
//permutation(letters, letters.count - 1)

