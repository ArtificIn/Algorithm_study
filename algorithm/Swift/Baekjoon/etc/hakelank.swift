//
//  hakelank.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/06.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation
// 1
func braces(values: [String]) -> [String] {
    var value = values
    var answers: [Bool] = []
    // 1. 괄호 개수가 맞는지 확인하기 -> 스택
    // 2. 괄호가 제대로 닫혀야 인정 -> 현재 자리 , 다음 자리 비교
    for i in value {
        var s = i
        // '[{}]'
        var j = 1
        while j == s.count / 2 {
            let range = i.index(i.startIndex, offsetBy: j)
            let compareRange = i.index(i.startIndex, offsetBy: j-1)
            
            if s[range] == "}" {
                if s[compareRange] == "{" {
                    s.remove(at: range)
                    s.remove(at: compareRange)
                }
            } else if s[range] == ")" {
                if s[compareRange] == "(" {
                    s.remove(at: range)
                    s.remove(at: compareRange)
                }
            
            } else if s[range] == "]" {
                if s[compareRange] == "[" {
                    s.remove(at: range)
                    s.remove(at: compareRange)
                }
            }
            j += 1
        }
    }
    return []
}




//2
func programmerStrings(s: String) -> Int {
    // 1. 중간 값을 기준으로 두 문자열을 나눈다
    // 2. 나눈 두 문자열의 문자가 같은지 비교한다 (Set 사용?)
    var strings = s
    var (sta, end) = (0,0)
    var p = "programmer".map { "\($0)" }
    
    for i in 0..<s.count - 1{
        let start = s.index(s.startIndex, offsetBy: i)
        if !p.isEmpty && p.contains("\(s[start...start])") {
           let a = p.filter { $0 == "\(s[start...start])"}
           
           p.removeAll(where: {$0 == "\(s[start...start])"})
            
            if a.count > 1 {
                let b = Array(repeating: "\(s[start...start])", count: a.count - 1)
                p.append(contentsOf: b)
            }
        }
        
        if p.isEmpty {
            print("i",i)
            sta = i - 1
            p = "programmer".map { "\($0)" }
        }
        if s[start...start] == "p" {
            end = i - 1
        }
    }
    
    print(sta, end)
    
    return end - sta
}

//programmerStrings(s: "progxrammerrxproxgrammer") // 2
//programmerStrings(s: "xprogxrmaxemrppprmmograeiruu") // 2
//programmerStrings(s: "programmerprogrammer") // 0

//3
func countTeams(skills: [Int], minPlayers: Int, minLevel: Int, maxLevel: Int) -> Int {
    // 조합 문제
    // 1. 가능한 스킬 레벨 배열을 뽑는다
    // 2. 인원 수 만큼의 조합을 만든다
    // 3. minplayer 개수 이상의 조합 개수를 반환한다
    
    var combi : [[Int]] = []
    var availableSkills : [Int] = []
    
    func combination(elements: ArraySlice<Int>, k: Int) -> [[Int]] {
        if k == 0 {
            return [[]]
        }
        
        guard let first = elements.first else {return []}
        let head = [first]
        let sub = combination(elements: elements.dropFirst(), k : k - 1)
        var ret = sub.map { head + $0 }
        ret += combination(elements: elements.dropFirst(), k: k)
        return ret
    }
    
    for i in skills {
        if i >= minLevel && i <= maxLevel {
            availableSkills.append(i)
        }
    }
    if availableSkills.count < minPlayers  {
        return 0
    }
    
    for i in minPlayers...availableSkills.count{
        combi += combination(elements: ArraySlice(availableSkills), k: i)
    }
    
    return combi.count
}

