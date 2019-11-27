//
//  PN_2493 tower.cpp
//  algorithm
//
//  Created by 성다연 on 21/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "stack"
using namespace std;

/*
 *****
 1. 현재 탑은 가까운 좌특 탑부터 비교한다
 2. 현재 탑보다 큰 높이의 탑을 수신한다
 */
//
//int main(){
//    stack<int> stackArray, indexArray;
//    int num, value = 0;
//    cout<<"입력 : ";
//    cin >> num;
//
//    for(int i = 1; i<= num; i++){
//        cin >> value;
//
//        while(!stackArray.empty()){
//            // 스택의 top이 현재 입력값보다 크다면 신호 수신 가능
//            if(stackArray.top() > value){
//                // top 위치를 출력하고 반복문 나가기
//                cout << indexArray.top() << " ";
//                break;
//            }
//            else {
//                stackArray.pop();
//                indexArray.pop();
//            }
//        }
//
//        // 스택이 비어있으면 0
//        if(stackArray.empty()) cout << "0 ";
//
//        stackArray.push(value);
//        indexArray.push(i);
//
//    }
//
//    return 0;
//}

