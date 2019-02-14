//
//  PN_9095.cpp
//  algorithm
//
//  Created by 성다연 on 2019. 2. 4..
//  Copyright © 2019년 성다연. All rights reserved.
//
// 문제 제목 : 1,2,3 더하기
// 점화식 DP(n) = DP(n-3) + DP(n-2) + DP(n-1)

// n > 11
// n = 1 -> [1] = 1
// n = 2 -> [1+1, 2] = 2
// n = 3 -> [1+1+1, 1+2 * 2, 3] = 4
// n = 4 -> [1+1+1+1, 1+1+2 * 3, 2+2, 3+1 * 2] = 7
// n = 5 -> [1+1+1+1+1, 1+1+1+2 * 4, 1+2+2 * 3, 1+3+1 * 3, 2+3 * 2 = 13
// n = 6 -> [1+1+1+1+1+1, 1+1+1+1+2 * 5, 1+1+2+2 * 6, 2+2+2, 1+1+1+3 * 4, 1+2+3 * 6, 3+3] = 24
// n = 7 -> 44
//

//#include <iostream>
//using namespace std;
//
//int main(){
//    int t, n;
//    int array[12] = {0,1,2,4};
//
//    for (int i = 4; i <= 11; i++) array[i] = array[i-3] + array[i-2] + array[i-1];
//    cin >> t;
//
//    for (int j = 0; j< t; j++){
//        cin >> n;
//        cout<< array[n] <<endl;
//    }
//    return 0;
//}
