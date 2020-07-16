//
//  PN_1918.cpp
//  algorithm
//
//  Created by 성다연 on 06/11/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "stack"
#include "string"
using namespace std;

/*
 푼 풀이
 1. 괄호 파악
 2. 특수문자 파악
 3. 특수문자 닫는 괄호 뒤에 배치
 4. 괄호 지우기
 
 
 해답
 1. 우선순위 지정
    ( ) = 0
    + - = 1
    * / = 2
    피연산자 (A,B,C) = -1
 2. 글자 리딩
    우선순위 -1 은 그대로 출력
    열린 괄호는 스택에 넣기
    닫힌 괄호는 스택에 있는 열린 괄호를 만날때까지 팝
    우선순위 1 이상은 스택에 있는 연산자의 우선순위가 더 높으면 팝, 그 외의 스택 푸시
    맨 마지막에는 스택에 남아있는 것이 없도록 모두 팝
 
 **/

void solution1918(string a){
    stack <char> arr;
    string result;
    for (int i = 0; i<a.length(); i++){
        if ('A' <= a[i] && a[i] <= 'Z') result += a[i];
        else {
            switch (a[i]){
                case '(':
                    arr.push(a[i]);
                    break;
                case '*': case '/':
                    while(!arr.empty() && (arr.top() == '*' || arr.top() == '/')){
                        result += arr.top();
                        arr.pop();
                    }
                    arr.push(a[i]);
                    break;
                case '+': case '-':
                    while(!arr.empty() && arr.top() != '('){
                        result += arr.top();
                        arr.pop();
                    }
                    arr.push(a[i]);
                    break;
                case ')':
                    while(!arr.empty() && arr.top() != '('){
                        result += arr.top();
                        arr.pop();
                    }
                    arr.pop();
                    break;
            }
        }
    }
    while (!arr.empty()) {
        result += arr.top();
        arr.pop();
    }
    cout<< result<<"\n";
}

//int main(){
//    string a;
//    cout<< "입력 : ";
//    cin >> a;
//    solution1918(a);
//}
