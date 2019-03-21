//
//  PN_2504 valueIn().cpp
//  algorithm
//
//  Created by 성다연 on 19/03/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "stack"
using namespace std;

int solution2504(string a){
    stack<char> array;
    int sum = 0;
    int tmp = 1;

    for (int i = 0; i<a.length(); i++ ){
        switch (a[i]) {
            case '(':
                tmp *= 2;
                array.push('(');
                break;
            case '[':
                tmp *= 3;
                array.push('[');
                break;
            case ')':
                if(a[i-1] == '(') sum += tmp;
                if(array.empty()) return 0;
                if(array.top() == '(') array.pop();
                tmp /= 2;
                break;
            case ']':
                if(a[i-1] == '[') sum += tmp;
                if(array.empty()) return 0;
                if(array.top() == '[') array.pop();
                tmp /= 3;
                break;
        }
    }
    return array.empty() ? sum : 0;

}

//int main(){
//    string a;
//    cin >> a;
//    cout << solution2504(a);
//    return 0;
//}
