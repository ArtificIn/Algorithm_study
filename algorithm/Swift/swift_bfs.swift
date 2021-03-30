//
//  swift_bfs.swift
//  algorithm
//
//  Created by 성다연 on 2020/12/03.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

// BFS
// 넓이 우선 탐색, 큐를 통해 규현.
// 최단 경로를 구할 때 쓴다

class Node<T> {
    let value : T
    var edges = [Edge<T>]()
    var visited = false

    init(value : T){
        self.value = value
    }

    func appendEdgeTo(_ node : Node<T>){
        let edge = Edge<T>(from: self, to: node)
        self.edges.append(edge)
    }
}


class Edge<T> {
    weak var source : Node<T>?
    let destination : Node<T>

    init(from source: Node<T>, to destination: Node<T>) {
        self.source = source
        self.destination = destination
    }
}


//func swiftBFS(n : Int, edges : [(Int, Int)]) {
//    let nodes = (0..<n).map{ Node<Int>(value: $0 + 1)}
//    for (from, to) in edges {
//        nodes[from - 1].appendEdgeTo(nodes[to - 1])
//    }
//
//    var shortest = Array(repeating: [1], count: n)
//
//    var queue = Queue<Node<Int>>()
//    queue.enqueue(nodes[0])
//    nodes[0].visited = true
//
//    while let node = queue.dequeue() {
//        for edge in node.edges {
//            let dest = edge.destination
//            guard dest.visited == false else { continue }
//            queue.enqueue(dest)
//            dest.visited = true
//            shortest[dest.value - 1] = shortest[node.value - 1] + [dest.value]
//        }
//    }
//
//    print(shortest)
//}
