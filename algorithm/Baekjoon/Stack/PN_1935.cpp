//
//  PN_1935.cpp
//  algorithm
//
//  Created by 성다연 on 20/11/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "stack"
using namespace std;


/*
 ABC*+DE/-
 (A+B*C)-(D/E)
 
 DE/ => D / E
 ABC*+ => A+B*C
 
 (1 + 2 * 3) - (4 / 5)
 */

void solution1935(){
    stack<char> array;
    stack<char> array2;
    string b = "";
    int a=0;
    char temp, value1, value2;
    cin >> a;
    
    while (true){
        if (temp == '\n') break;
        cin >> temp;
//        cout << "temp = "<< temp;
//        if (temp == '*' || temp =='/' || temp == '+' || temp == '-'){
//            if (array2.empty()) {
//                value1 = array.top();
//                array.pop();
//                array2.push(value1);
//            }
//            array2.push(temp);
//            value2 = array.top();
//            array.pop();
//            array2.push(value2);
//        } else{
//            array.push(temp);
//
//        }
    }
    
    for(int i=0;i<a;i++){
        
    }
    
    for (int i=0; i<a; i++) {
        b += array2.top();
        array2.pop();
    }
    cout<< b<<"종료";
}
//int main(){
//    cout<< "입력 : ";
//    solution1935();
//}
