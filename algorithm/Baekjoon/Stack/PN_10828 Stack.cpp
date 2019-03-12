//
//  PN_10828 Stack.cpp
//  algorithm
//
//  Created by 성다연 on 12/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include <iostream>
#include <stack>
#include <string>

using namespace std;
/** strtok = 문자열 분리 함수, strtok(문자열, 분리 기준) , strtok( str, " ") */

stack<int> bag;

void connet(stack<int> &a, string orders, int num){
    if(orders == "push"){
        a.push(num);
    }else if (orders == "pop"){
        if (a.empty()) cout<< -1 <<endl;
        else {
            cout<< a.top()<<endl;
            a.pop();
        }
    }else if (orders == "size"){
        cout<< a.size()<<endl;
    }else if (orders == "empty"){
        int temp = a.empty() ? 1 : 0 ;
        cout << temp << endl;
    }else if (orders == "top"){
        if (a.empty()) cout<< -1 <<endl;
        else cout<< a.top()<<endl;
    }
    
}

void solution10828(string a){
    string order = a.substr(0, a.find(" "));
    string str_num;
    int number;
    
    if (a.size() > order.size()) {
        str_num = a.substr(a.find(" ")+1, a.size());
        //number = stoi(str_num); // c++11 이상
        number = (atoi(str_num.c_str())); // 백준 일반 c++에선 확인 안됨
    }
    connet(bag, order, number);
}

int main(){
    int runningTime = 0;
    cin >> runningTime;
    string aa;
    
    for (int i = 0; i < runningTime + 1 ; i++) {
        getline(cin, aa);
        solution10828(aa);
    }
    
    return 0;
}
