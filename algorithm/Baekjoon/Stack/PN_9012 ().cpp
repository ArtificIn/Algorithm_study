//
//  PN_9012 ().cpp
//  algorithm
//
//  Created by 성다연 on 14/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include <iostream>
#include <string>
#include <stack>
using namespace std;

/**
    1. 문자열로 받아서 괄호가 있는 위치 찾고, 문자열에서 빼기
    2. 포인터 배열로 받아서 괄호가 있는 위치 문자열에서 빼기
    3. 벡터로 받아서 괄호가 있는 문자 빼기
 */

string solution9012(string str){
    stack<char> array;
    
    for(int i = 0; i< str.length(); i++){
        char c = str[i];
        
        if (c == '(') array.push(str[i]);
        else {
            if (!array.empty()) array.pop();
            else return "NO";
        }
    }
    
    return array.empty() ? "YES" : "NO";
}

//int main(){
//    int number = 0;
//    cin >> number;
//
//    for (int i = 0; i<number ; i++) {
//        string str;
//        cin >> str;
//        cout << solution9012(str) << endl;
//    }
//
//    return 0;
//}
