//
//  bridge_truck.swift
//  algorithm
//
//  Created by 성다연 on 2020/07/16.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// 다리를 지나는 트럭 - https://programmers.co.kr/learn/courses/30/lessons/42583

func stack_bridge_truck_solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var array : [Int] = truck_weights // 대기중 트럭
    var times : [Int] = [Int]() //무게 변수
    var weights : [Int] = [Int]() // 트럭 무게
    var time : Int = 0
    
    while !array.isEmpty {
        time += 1
        if !times.isEmpty { // 올라탈 트럭이 있는 가
            if time == times.first! { // 비어있지 않고 현재 시간이 트럭이 내릴 시간과 같다면
                times.removeFirst()
                weights.removeFirst()
            }
        }
        if weights.reduce(0, +) + array.first! <= weight { // 대기중인 트럭이 올라올 수 있다면
            weights.append(array.first!) // 대기중인 트럭 무게 추가
            times.append(time + bridge_length) // 트럭이 내릴 시간 넣기
            array.removeFirst()
        }
    }
    
    return times.last!
}


