//
//  Combination.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/03.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func combination<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }
    
    guard let first = elements.first else { return [] }
    
    let head = [first]
    let subCombination = combination(elements: elements, k: k - 1)
    var ret = subCombination.map { head + $0 }
    ret += combination(elements: elements.dropFirst(), k: k)
    
    return ret
}

func combination<T>(elements: Array<T>, k:Int) -> [[T]] {
    return combination(elements: ArraySlice(elements), k: k)
}

/**
 [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [2, 2], [2, 3], [2, 4], [2, 5], [3, 3], [3, 4], [3, 5], [4, 4], [4, 5], [5, 5]]
 */

//let numbers = [1,2,3,4,5]
//print(combination(elements: numbers, k: 2))

