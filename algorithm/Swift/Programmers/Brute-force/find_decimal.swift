//
//  find_decimal.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/23.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// 풀이법
/*
 차례로 맨 앞자리에 숫자들을 대입하면서 n-1의 자리 숫자들을 뒤에 배치한다
 이렇게 모든 숫자들을 나열하면 11, 111 222 666 과 같이 숫자는 하나만 있는데 조합상엔 여러 숫자가 있는 것.
 이 문제를  해겨랗기 위해 맨 처음 numbers에 숫자의 중복이 있는지 찾는다.
 그리고 조합 상의 숫자가 그 숫자보다 많은 것은 추가해주지 않고 적거나 같은 것들을 추가해준다.
 중복을 없애기 위해 Set를 사용해준 뒤 걸러져 나온 숫자들을 소수가 맞는지 확인한다.
 
 
 
 에라토스 테네스의 체로 푼 솔루션
 방법은 우선 Array의 크기를 미리 정해준 뒤 안에다가 전부 false를 집어넣는다. n+1로 하는 이유는 배열이 0부터 시작하기 때문이다. 그렇게 한 뒤 1빼고 2부터 n까지 중 false 인 값이 있다면 카운트를 +1해준 뒤 i의 배수를 모두 true로 바꿔준다.
 한번에 차례대로 소수의 배수를 true로 해주기 때문에 시간을 크게 줄일 수 있다.
 이렇게 차례차례 소수들의 배수를 체로 걸러내는 방법이 에라토스테네스의 체라는 것이다.
 배수를 한번에 없애는 방법이 바로 for stride 구문인데 from은 ~부터 through는 ~까지 by는 ~씩 고로 소수부터 n까지 소수의 배수만큼 모두 true로 바꿔주라는 거다.
 https://fomaios.tistory.com/109
 
 */


func solution(_ n : Int) -> Int {
    var count = 0
    var array = Array.init(repeating: false, count: n+1)
    
    for i in 2...n {
        if array[i] == false {
            count += 1
            
            for j in stride(from: i, through: n, by : i) {
                array[j] = true
            }
        }
    }
    
    return count
}
