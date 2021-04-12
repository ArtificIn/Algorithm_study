//
//  word_search_79.swift
//  algorithm
//
//  Created by 성다연 on 2021/04/12.
//  Copyright © 2021 성다연. All rights reserved.
//

import Foundation
// word 첫 글자가 포함된 부분 서치 시작
// 서치시 [i][j+1], [i+1][j]가 원하는 문자열인지 확인
// 맞다면 다음 문자로 재차 서치, 틀리면 board의 다음 부분 서치

func word_search_79_exist(_ board: [[Character]], _ word: String) -> Bool {
    var boards = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
    let words = word.map { $0 }
    
    func dfs(board: [[Character]], _ wordContent : [Character], i:Int, j:Int, visited:[[Bool]], index:Int) -> Bool {
        if index == wordContent.count {
            return true
        }
        guard i >= 0 && i < board.count && j >= 0 && j < board[0].count,
              !boards[i][j] && board[i][j] == words[index] else {
            return false
        }
        
        boards[i][j] = true
        
        if dfs(board: board, words, i: i+1, j: j, visited: boards, index: index+1) ||
            dfs(board: board, words, i: i, j: j+1, visited: boards, index: index+1) ||
            dfs(board: board, words, i: i, j: j-1, visited: boards, index: index+1) ||
            dfs(board: board, words, i: i-1, j: j, visited: boards, index: index+1) {
            return true
        }
        boards[i][j] = false
        
        return false
    }
    
    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if board[i][j] == words[0] && dfs(board: board, words, i: i, j: j, visited: boards, index: 0) {
                return true
            }
        }
    }
    
    return false
}
    
