//
//  problem5-3.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 10. 8..
//  Copyright © 2018년 성다연. All rights reserved.
//

// 문제 제목 : 프린터 [스택/큐]

#include <iostream>
#include <string>
#include <vector>
#include <queue>
#include <algorithm>
using namespace std;

int solution(vector<int> priorities, int location) {
    vector<int> s = priorities;
    vector<int> p = priorities;
    queue<int> q;
    int answer =0;
    int i=0;

     sort(s.begin(),s.end(),greater<int>());

     while(true){
         if(p[0] < p[i]){
             i=1;
             p.push_back(p.front());
             p.erase(p.begin());
             if(answer == 0) answer = p.size() + 1;
             answer--;
            }
         else
             i++;
         if(p==s)break;
     }

      return answer;
    
}
//    
//int main(){
//    vector<int> a = {1,1,9,1,1,1}; // 0, 5
//    vector<int> b = {2,1,3,2}; // 2, 1
//    cout<< solution(a, 0)<<endl<<endl;
//
//    cout<<solution(b, 2)<<endl<<endl;
//}
