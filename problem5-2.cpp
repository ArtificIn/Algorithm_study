//
//  problem5-2.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 10. 7..
//  Copyright © 2018년 성다연. All rights reserved.
//


/*
 트럭 여러 대가 강을 가로지르는 일 차선 다리를 정해진 순으로 건너려 합니다. 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 알아내야 합니다. 트럭은 1초에 1만큼 움직이며, 다리 길이는 bridge_length이고 다리는 무게 weight까지 견딥니다.
 ※ 트럭이 다리에 완전히 오르지 않은 경우, 이 트럭의 무게는 고려하지 않습니다.
 
 예를 들어, 길이가 2대까지, 무게 10kg까지 견디는 다리가 있습니다. 무게가 [7, 4, 5, 6]kg인 트럭이 순서대로 최단 시간 안에 다리를 건너려면 다음과 같이 건너야 합니다.
 
 경과 시간    다리를 지난 트럭    다리를 건너는 트럭(2대)    대기 트럭
 0                   []           []         [7,4,5,6]
 1~2                 []          [7]         [4,5,6]
 3                   [7]         [4]         [5,6]
 4                   [7]       [4,5]         [6]
 5                 [7,4]         [5]         [6]
 6~7             [7,4,5]         [6]         []
 8              [7,4,5,6]         []         []
 따라서, 모든 트럭이 다리를 지나려면 최소 8초가 걸립니다.
 
 solution 함수의 매개변수로 다리 길이 bridge_length, 다리가 견딜 수 있는 무게 weight, 트럭별 무게 truck_weights가 주어집니다. 이때 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 return 하도록 solution 함수를 완성하세요.
 
 제한 조건
 bridge_length는 1 이상 10,000 이하입니다.
 weight는 1 이상 10,000 이하입니다.
 truck_weights의 길이는 1 이상 10,000 이하입니다.
 모든 트럭의 무게는 1 이상 weight 이하입니다.
 입출력 예
 bridge_length    weight    truck_weights    return
 2    10    [7,4,5,6]    8
 100    100    [10]    101
 100    100    [10,10,10,10,10,10,10,
 */
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

int solution(int bridge_length, int weight, vector<int> truck_weights) {
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
