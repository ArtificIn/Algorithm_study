//
//  problem5-2.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 10. 7..
//  Copyright © 2018년 성다연. All rights reserved.
//

// 문제 제목 : 다리를 지나는 트럭 [스택/큐]

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

int solution_2L_5(int bridge_length, int weight, vector<int> truck_weights) {
    vector<int> bridge; //다리 위 트럭
    int answer=1;
    int truck_pos=0; // 이동할 차량 순서
   
    while(true){
        int truck_weight=0; //다리 위 트럭 무게 세기
        bool flag = true;
        for(int i=0; i<bridge.size();i++) truck_weight += bridge[i];
        
        if(bridge.size() <= bridge_length){
            answer++;
            if(truck_weight + truck_weights[truck_pos] <= weight){
                bridge.push_back(truck_weights[truck_pos]);
                if(bridge.size() > bridge_length) bridge.erase(bridge.begin());
                if (truck_pos != truck_weights.size()) truck_pos++;
            }
            else bridge.push_back(0);//밀어주기
        }
    
        if(bridge.size() >= bridge_length){ // bridge의 맨 끝자리에 트럭이 있는 경우
            bridge.erase(bridge.begin());
            if(truck_pos == truck_weights.size()){
                for(int j=0;j<bridge.size();j++) if(bridge[j] != 0) flag = false;
                if(flag == true) break;
            }
        }
    }
    return answer;
}
//
//int main(){
//    vector<int>t = {7,4,5,6};
//    cout<<solution(2, 10, t)<<endl<<endl;
//    vector<int> truck_weights = {10};
//    cout<<solution(100,100,truck_weights)<<endl<<endl;
//    vector<int> truck = {10,10,10,10,10,10,10,10,10,10};
//    cout<<solution(100,100,truck)<<endl;
//}
