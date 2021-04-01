//
//  normal_rectangle.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

/*
규칙이 있는 최대공약수 문제
- 최대공약수가 1보다 클 때 잘라지는 사각형 수는 w + h - g
- 전체 사각형 개수에서 잘라지는 사각형 개수를 빼면 w * h - (w + h - g)
*/

func normal_rectangle_solution(_ w:Int, _ h:Int) -> Int64 {
    func gcd(_ a : Int, _ b : Int) -> Int{
        if a % b == 0 {
            return b
        }
        return gcd(b, a % b)
    }
    
    return Int64(w * h - (w + h - gcd(w,h)))
}
