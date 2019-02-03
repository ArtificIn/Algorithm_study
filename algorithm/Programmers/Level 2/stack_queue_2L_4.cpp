//
//  problem5-1.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 10. 4..
//  Copyright © 2018년 성다연. All rights reserved.
//
// 문제 제목 : 탑 [스택/큐]

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

vector<int> solution(vector<int> heights) {
    vector<int> answer;
    
    for(int i = heights.size(); i>0; i--){
        bool flag = false;
        for(int j = i; j >0; j--){
            if(heights[i-1] < heights[j-1]) {
                answer.push_back(j);
                flag = true;
                break;
            }
        }
        if(flag == false) answer.push_back(0);
    }
    reverse(answer.begin(),answer.end());
    
    return answer;
}

//int main(){
//    vector<int> t  = {3,9,9,3,5,7,2};//{6,9,5,7,4};
//    cout<<"running problem 5-1 "<<endl;
//    solution(t);
//    cout<<endl;
//    return 0;
//}
