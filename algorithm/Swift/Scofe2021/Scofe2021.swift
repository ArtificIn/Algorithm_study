//
//  Scofe.swift
//  algorithm
//
//  Created by 성다연 on 2021/03/20.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation

func solution_soca(){
    print("write : ")
    let countInput = Int(readLine()!)!
    var arriveTimeArray : [Date] = []
    var leaveTimeArray : [Date] = []

    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"
    formatter.timeZone = TimeZone(secondsFromGMT: 0)

    for i in 0..<countInput {
        let timeInput = readLine()!
        let tempArray = timeInput.split(separator: " ")
        let aString = "\(tempArray.first!)"
        let lString = "\(tempArray.last!)"
        if let arriveDate = formatter.date(from: aString),
           let leaveDate = formatter.date(from: lString) {
            arriveTimeArray.append(arriveDate)
            leaveTimeArray.append(leaveDate)
        }
    }

    if let arriveDate = arriveTimeArray.sorted(by: >).first,
       let leaveDate = leaveTimeArray.sorted(by: <).first {
        if arriveDate > leaveDate {
            print(-1)
        } else {
            let a = formatter.string(from: arriveDate)
            let b = formatter.string(from: leaveDate)
            print(a, "~", b)
        }
    }

}


func scofe_marketKerry() {
    // 재귀 문제..같다

    // 다음 수가 1이라면
    // func move1()
    //      다음 수가 1이라면
    //      func move2()

    let countInput = Int(readLine()!)!
    let boxesInput = readLine()!
    var boxes = boxesInput
    var onOff : Bool = false // 다음 수가 0인지 아닌지
    
    if boxesInput.count == 2 {
        print(1)
        
    } else {
        boxes.remove(at: boxes.startIndex)
        boxes.remove(at: boxes.endIndex)
        
        var box = boxes.map { Int("\($0)")}

        for i in 0..<box.count - 1 {
            if let a = box[i + 1] {
                onOff = a == 0 ? true : false
            }
            
        }
    }
    
    // 다음 수가 0이 아닐 경우
    //      다음 수가 0인 경우 ? 1을 더한다 : 2를 더한다
    //      다음 수가 0이 아닐 경우
    // 다음 수가 0일 경우 2를 더한다

    // 양 끝의 1은 반드시 고정 (즉 최소가 2개일 떄)
    // 1 1
    // . .

    // 가운데 점으로 확률 구하기

    // var count 변수로 on/off 관리

    // 1 1 1    -> 1 : 2개 (다음 수가 0이 아닐 경우)
    // . . .
    // .   .

    // 1 1 0 1  -> 1, 0 : 1개 (다음 수가 0인 경우, onOff = true)
    // . .   .

    // 1 1 1 1 -> 1 - 2 : 3개 (1이 off될경우 onOff = true, onOff == true 면 다음 수 off 불가능
    // . . . .
    // . .   .
    // .   . .

    // 1 1 1 0 1    1 1 0 1 1
    // . . .   .    . .   . .
    // .   .   .

    // 1 1 1 1 1
    // . . . . .

    // .   .   .
    // . .   . .
    // .   . . .
    // . . .   .
}


func scofe_bucketPlace(){
    let countInput = Int(readLine()!)!
    var places : [[Int]] = []
    var size: [Int] = []
    var total = 0

    for i in 0..<countInput {
        let place = readLine()!
        places.append([])
        for j in place {
            if let value = Int("\(j)") {
                places[i].append(value)
            }
        }
    }

    let size1count = places.flatMap{ $0.filter { $0 == 1}}.count
    size.append(size1count)
    
    for a in 1..<countInput {
        for w in 0..<countInput - a {
            for h in 0..<countInput - a {
                let width = places[w][h...h+a].reduce(0, +)
                var height = 0
                
                for i in w...w+a {
                    height += places[i][h]
                }
                
                if width == a + 1 && height == a + 1 {
                    total += 1
                }
            }
        }
        size.append(total)
        total = 0
    }
    size = size.filter { $0 != 0 }
    print("total:", size.reduce(0, +))
    for i in 0..<size.count {
        print("size[\(i+1)]:",size[i])
    }
}

// 1 1 1 1
// 1 1 1 1
// 1 1 1 1
// 1 1 1 1
func scofe_watcha(){
    var score : [Float] = []
    var contentWatch : [String] = []
    var contentCategory : [String] = []
    var contents : [(String, Float)] = []
    var (n, m) = (0, 0)
    
    let scoreInput = readLine()!
    scoreInput.split(separator: " ").forEach { score.append( Float("\($0)")!)}
    
    let whInput = readLine()!
    let widthHeight = whInput.split(separator: " ")
  
    n = Int("\(widthHeight.first!)")!
    m = Int("\(widthHeight.last!)")!
    
    func getScore(value: String) -> Float {
        if value == "A" {
            return score[0]
        } else if value == "B" {
            return score[1]
        } else if value == "C" {
            return score[2]
        } else if value == "D"{
            return score[3]
        } else if value == "E" {
            return score[4]
        } else {
            return 0.0
        }
    }
    
    func getCategory(value: String) -> Int{
        if value == "Y" {
            return 2
        } else if value == "O" {
            return 1
        } else {
            return 0
        }
    }
    
    for _ in 0..<n {
        let contentsWatchInput = readLine()!
        for i in contentsWatchInput {
            contentWatch.append("\(i)")
        }
    }
    
    for _ in 0..<n {
        let contentsCategoryInput = readLine()!
        for i in contentsCategoryInput {
            contentCategory.append("\(i)")
        }
    }
    
    for i in 0..<contentWatch.count {
        let watch = contentWatch[i]
        let category = getScore(value: contentCategory[i])
        contents.append((watch, category))
    }
    
    print(contents)
}
