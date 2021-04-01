//
//  2020 kakao.swift
//  algorithm
//
//  Created by 성다연 on 2020/08/25.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

func kakao_2020_solution(_ s:String) -> Int {
    var answerarr = [Int]()
    var i = 0
    while i <= s.count/2 {
        var j = 0, count = 1
        var pre = "", answer = ""
        i += 1
        
        while j <= s.count {
            let remainder = s.suffix(s.count-j)
            let prefix = remainder.prefix(i)
            if pre == prefix {
                count += 1
                j += i
                continue
            }
            if count > 1 {
                answer += "\(count)\(pre)"
            }
            answer += pre
            pre = String(prefix)
            count = 1
            j += i
        }
        answer += String(s.suffix(s.count-(j-i)))
        answerarr.append(answer.count)
    }
    return answerarr.min()!
}
