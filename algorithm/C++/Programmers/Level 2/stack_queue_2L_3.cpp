//
//  problem4-3.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 9. 28..
//  Copyright © 2018년 성다연. All rights reserved.
//

// 문제 제목 : 기능개발 [스택/큐]

#include <iostream>
#include <string>
#include <vector>
using namespace std;

vector<int> solution_2L_3(vector<int> progresses, vector<int> speeds){
    vector<int> days;//날짜 수 저장
    vector<int> answer;
    // progresses + speeds 계산
    for(vector<int>::size_type i=0; i<progresses.size(); i++){
        int day = 1; // n일 세기
        while(true){
            if(progresses[i] + speeds[i] * day >= 100) {
                days.push_back(day);
                break;
            }
            day += 1;
        }
    }

    // days 값 정렬해주기
    for(int i=0;i<progresses.size();i++ )
        if(days[i] >= days[i+1] )
            days[i+1] = days[i];

    vector<int> a(days);
    days.erase(unique(days.begin(),days.end()),days.end());

    for(int i=0;i<days.size();i++){
        int c = count(a.begin(),a.end(),days[i]);
        answer.push_back(c);
    }

    return answer;
}

//int main(){
////    vector<int> progress = { 15               , 1, 14, 9, 29, 25, 17, 24, 4, 27};
////    vector<int> speed =    {9, 11, 21, 16, 11, 21, 7, 5, 6, 30};
//
////    vector<int> progress = {93,30,55};
////    vector<int> speed = {1,30,5};
//    vector<int> progress = { 15, 1, 14, 9, 29, 25, 17, 24, 4, 27, 7, 19, 29, 14, 23, 4, 21, 3, 8, 14};
//    vector<int> speed = {9, 11, 21, 16, 11, 21, 7, 5, 6, 30, 11, 24, 26, 18, 20, 18, 15, 30, 7, 18};
//    solution(progress,speed);
//    cout<<endl;
//    return 0;
//}
