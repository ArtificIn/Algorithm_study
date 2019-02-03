//
//  PN_1463.cpp
//  algorithm
//
//  Created by 성다연 on 2019. 2. 3..
//  Copyright © 2019년 성다연. All rights reserved.
//
// 문제 제목 : 1로 만들기
// DP(n) = min( DP(n/3) + DP(n/2) + DP(n-1) ) + 1

#include "iostream"
#include "algorithm"
using namespace std;

int solution1463(int value){
    int array[1000001];
    array[1] = 0;
    
    for (int i = 2; i<= value; i++){
        array[i] = array[i-1] + 1;
        if(i % 2 == 0) array[i] = min(array[i], array[i/2] + 1);
        if(i % 3 == 0) array[i] = min(array[i], array[i/3] + 1);
    }
    
    return array[value];
}


int main(){
    int a;
    cout<<"값을 입력하세요 :";
    cin >> a;
    cout<< solution1463(a) << endl;
    
    return 0;
}
