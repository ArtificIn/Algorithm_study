//
//  PN_2579.cpp
//  algorithm
//
//  Created by 성다연 on 2019. 2. 4..
//  Copyright © 2019년 성다연. All rights reserved.
//
// 문제 제목 : 계단 오르기
// 점화식 : DP(n) = max(DP(n-2) + ST(n), DP(n-3) + ST(n-1) + ST(n))

/*
 1. 계단을 오를 때는 1칸, 2칸까지 오를 수 있다
 2. 연속된 3칸을 오를 수 없다
 3. 마지막 계단(n)은 무조건 밟아야한다.
    3.1 전칸(n-1)을 밟고 마지막 칸(n)을 밟는 경우
        3.1.1 (2번 규칙 - 연속된 3칸을 밟을 수 없다) => (n-3) + (n-1) + n
    3.2 전전칸(n-2)을 밟고 마지막 칸(n)을 밟는 경우 => (n-2) + n
 4. DP(3) 이전 계단 설정
    4.1 DP(0) 인 경우 한칸을 이동한다
    4.2 DP(1) 인 경우 두 칸을 갔을 경우 = 한칸 + 한칸 이동(DP(0) + DP(1)), 두칸 이동 (DP(1)) 중 최대값
    4.3 DP(2) 인 경우 세 칸을 갔을 경우 = 한칸 + 두칸 이동(DP(0) + DP(2)), 두칸 + 한칸(DP(2) + DP(1) 이동 중 최대값
 */

#include <iostream>
#include <algorithm>
using namespace std;

int solution2579(){
    int stairs[301];
    int dp[301];
    int n;
    
    cin>>n;
    for (int i = 0; i < n; i++) cin >> stairs[i];
    
    dp[0] = stairs[0];
    dp[1] = max(stairs[0] + stairs[1], stairs[1]);
    dp[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2]);
    
    for (int i = 3; i < n; i++){
        dp[i] = max(dp[i-2] + stairs[i], stairs[i-1] + stairs[i] + dp[i-3]);
    }
    return dp[n-1];
}

int main(){
    cout<< solution2579();
    return 0;
}
