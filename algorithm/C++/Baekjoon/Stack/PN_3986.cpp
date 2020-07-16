//
//  PN_3986.cpp
//  algorithm
//
//  Created by 성다연 on 17/11/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "string"
#include "stack"
using namespace std;

/* 최대한 배열 말고 스택 사용 */
void solution3986(){
    int a, result = 0;
    cin >> a;
    
    for (int i=0; i< a; i++){
        stack<char> array;
        string b;
        cin>> b;
        
        for (int j=0; j< b.length();j++){
            if (!array.empty() && array.top() == b[j]) array.pop();
            else array.push(b[j]);
        }
        if (array.empty()) result++;
    }
    cout<<result<<"\n";
}
//
//int main(){
//    solution3986();
//    return 0;
//}

