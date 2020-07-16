//
//  problem4-3.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 9. 27..
//  Copyright © 2018년 성다연. All rights reserved.
//
// 문제 제목 : 쇠막대기 [스택/큐]

#include <iostream>
#include <string>
#include <algorithm>
using namespace std;


string ReplaceAll(std::string &str, const std::string& from, const std::string& to){
    size_t start_pos = 0; //string처음부터 검사
    while((start_pos = str.find(from, start_pos)) != std::string::npos)  //from을 찾을 수 없을 때까지
    {
        str.replace(start_pos, from.length(), to);
        start_pos += to.length(); // 중복검사를 피하고 from.length() > to.length()인 경우를 위해서
    }
    return str;
}

int solution_2L_1(string arrangement) {
    string a = arrangement;
    int count=0;

    ReplaceAll(a, "()", "*");

    for(int j = 0; j<a.length()-2; j++){
        for(int pos=0;pos<a.length();pos++){
            if(a[pos]=='*'){
                if(a[pos-1]=='('|| a[pos+1]==')'){
                    int i = 1;
                    int star = 1;

                    while(a[pos+i]=='*'){
                        if(a[pos+i]!='*') break;
                        star++;
                        i++;
                    }

                    if(a[pos-1]=='(' && a[pos+i]==')') {
                        count += star+1;
                        a.erase(a.begin()+pos-1);
                        a.erase(a.begin()+pos+i-1);
                    }
                }
            }
        }
    }

    return count;
}

//int main(){
//    cout<<"The result is = "<<solution("()(((()())(())()))(())")<<endl;
//    return 0;
//}
