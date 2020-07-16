//
//  PN_1874 Stack Array.cpp
//  algorithm
//
//  Created by 성다연 on 17/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include <iostream>
#include <stack>
#include <vector>
using namespace std;

void solution1874(int redo){
    int numArray[100001];
    stack<int> stackArray;
    vector<char> vectorArray;
    
    for (int i = 0; i < redo; i++) cin >> numArray[i];
    
    int point = 0;
    for (int i = 1; i <= redo; i++){
        stackArray.push(i); // [ 1 2 3 4 5 6 7 8 .. redo]
        vectorArray.push_back('+');
        // 스택 값과 사용자 입력 수가 같을 때 pop
        while( !stackArray.empty() && stackArray.top() == numArray[point]){
            point++;
            stackArray.pop();
            vectorArray.push_back('-');
        }
    }
    
    if(!stackArray.empty()) cout << "NO";
    else for (int i = 0; i < vectorArray.size(); i++) cout<< vectorArray[i]<<"\n";
}

//int main(){
//    int redo = 0;
//    cin >> redo;
//    solution1874(redo);
//    return 0;
//}
