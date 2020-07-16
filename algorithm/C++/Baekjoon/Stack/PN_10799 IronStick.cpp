//
//  PN_10799 IronStick.cpp
//  algorithm
//
//  Created by 성다연 on 19/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "stack"
using namespace std;

/*
 보충 설명
 1. '(' 과 ')' 두 문자열이 스택에 들어간다
 2. '('을 입력했을 경우 단순 push
 3. ')'을 입력했을 경우 파이프인지, 레이저인지 알아야함.
    3.1 ')' 의 앞이 '(' 이면 레이저
    3.2 ')' 의 앞이 ')' 이면 파이프
 4. 레이저에 잘리는 파이프들을 스택에 저장하고 레이저를 지나칠 떄마다 합한다.
 */

int solution10799(string a){
    stack<char> array;
    int total = 0;
    
    for(int i = 0; i <a.length(); i++){
        if (a[i] == '(') array.push(a[i]);
        else{ // ')'
            array.pop();
            if (a[i-1] == '(') total += array.size();
            else total++;
        }
    }
    return total;
}

//int main(){
//    string a = "";
//    cin>> a;
//    cout << solution10799(a);
//    return 0;
//}
