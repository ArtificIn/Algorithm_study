//
//  bridge_truck.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/16.
//  Copyright © 2020 성다연. All rights reserved.
//

/**
 트럭 여러 대가 강을 가로지르는 일 차선 다리를 정해진 순으로 건너려 합니다. 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 알아내야 합니다. 트럭은 1초에 1만큼 움직이며, 다리 길이는 bridge_length이고 다리는 무게 weight까지 견딥니다.
 ※ 트럭이 다리에 완전히 오르지 않은 경우, 이 트럭의 무게는 고려하지 않습니다.
 
 bridge_length는 1 이상 10,000 이하입니다.
 weight는 1 이상 10,000 이하입니다.
 truck_weights의 길이는 1 이상 10,000 이하입니다.
 모든 트럭의 무게는 1 이상 weight 이하입니다.
 */

import Foundation

// 문제 핵심은 트럭이 올라갈 때의 시간을 기억하는 것
func bridge_truck_solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var array : [Int] = truck_weights // 대기중 트럭
    var heavy : Int = 0
    var times : [Int] = [Int]() //무게 변수
    var weights : [Int] = [Int]() // 트럭 무게
    var time : Int = 0
    
    while !array.isEmpty {
        time += 1
        if !times.isEmpty { // 올라탈 트럭이 있는 가
            if time == times.first! { // 비어있지 않고 현재 시간이 트럭이 내릴 시간과 같다면
                times.removeFirst()
                heavy -= weights.first!
                weights.removeFirst()
            }
        }
        if heavy + array.first! <= weight { // 대기중인 트럭이 올라올 수 있다면
            heavy += array.first!
            weights.append(array.first!) // 대기중인 트럭 무게 추가
            times.append(time + bridge_length) // 트럭이 내릴 시간 넣기
            array.removeFirst()
        }
    }
    
    return times.last!
}

//solution(2, 10, [7,4,5,6]) // 8
//solution(100, 100, [10]) // 101
//solution(100, 100, [10,10,10,10,10,10,10,10,10,10]) // 110

