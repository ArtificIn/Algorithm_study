//
//  line_solution1.swift
//  algorithm
//
//  Created by 성다연 on 2021/05/01.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation


func line_solution1(_ inputString:String) -> Int {
    var stack : [String] = []
    let wrap = ["(",")","{", "}", "[", "]", "<",">"]
    var count = 0
    
    func calculate() {
        count += 1
        stack.removeLast()
        stack.removeLast()
    }
    
    for i in 0..<inputString.count {
        let range = inputString.index(inputString.startIndex, offsetBy: i)
        if wrap.contains("\(inputString[range...range])") {
            stack.append("\(inputString[range...range])")
            
            if (inputString[range...range] == ")" || inputString[range...range] == "}" || inputString[range...range] == "]" || inputString[range...range] == ">") {
               
                
                if !stack.isEmpty && stack.last! == ")" {
                    if stack.count == 1 {
                        return -i
                    }
                    if stack[stack.count - 2]  == "(" {
                        calculate()
                        continue
                    }
                }
                if !stack.isEmpty && stack.last! == "}" {
                    if stack.count == 1 {
                        return -i
                    }
                    if  stack[stack.count - 2] == "{" {
                        calculate()
                        continue
                    }
                }
                if !stack.isEmpty && stack.last! == "]" {
                    if stack.count == 1 {
                        return -i
                    }
                    if stack[stack.count - 2]  == "[" {
                        calculate()
                        continue
                    }
                }
                if !stack.isEmpty && stack.last! == ">" {
                    if stack.count == 1 {
                        return -i
                    }
                    if stack[stack.count - 2] == "<" {
                        calculate()
                        continue
                    }
                }
                return -i
            }
        }
    }

    return stack.isEmpty ? count : -inputString.count+1
}
//
//print(line_solution1("Hello, world!"))
//print(line_solution1("line [({<plus>)}]"))
//print(line_solution1("line [({<plus>})"))
//print(line_solution1(">_<"))
//print(line_solution1("x * (y + z) ^ 2 = ?"))
//print(line_solution1("ABC)ABC")) // -3
//print(line_solution1("(A)[B]")) // 2
//print(line_solution1("ABC({ABC)ABC")) // 8
