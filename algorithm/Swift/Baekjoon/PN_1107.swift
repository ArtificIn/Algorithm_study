//
//  PN1107_remocon.swift
//  algorithm
//
//  Created by 성다연 on 2020/10/30.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

func solution1107(){
    let inputMonth = readLine()! // 월 입력
    let inputDay = readLine()! // 일 입력
    let month: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] // 해당 월에 대한 일수
    // sum에 대한 값을 키로 받아서 값 출력
    let dayOfTheWeek: [Int: String] = [0: "SUN", 1: "MON", 2: "TUE", 3: "WED", 4: "THU", 5: "FRI", 6: "SAT"]
    var sum = 0

    // Month는 12월까지, Day는 31일까지 존재한다는 조건하에 반복 실행
    if 1 <= Int(inputMonth)! && Int(inputMonth)! <= 12 && 1 <= Int(inputDay)! && Int(inputDay)! <= 31 {
        for i in 0..<(Int(inputMonth)! - 1) {
            sum += month[i]
        }

        sum += Int(inputDay)!

        sum = sum % 7
    }

    print(dayOfTheWeek[sum]!) // 값 출력
}
