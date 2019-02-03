//
//  problem4-2.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 9. 28..
//  Copyright © 2018년 성다연. All rights reserved.
// 문제 제목 : 124 나라의 숫자 [연습문제]

#include <iostream>
#include <string>
using namespace std;

// 1. 3으로 나눈 나머지 1,2,4
// 2. 자리수 - 3의 배수 이상일 때마다 한 자리씩 추가

string solution_2L_2(int n) {
    string answer="";
    string arr [] = {"4","1","2"};
    
    while(n>0){
        int pos = n%3;
        n /= 3;
        
        if(pos == 0) n -= 1;
        answer = arr[pos]+ answer;
    
    }

    return answer;
}

//int main(){
//    cout<<"input( 8 )= "<<solution(8)<<endl;
//    return 0;
//}
