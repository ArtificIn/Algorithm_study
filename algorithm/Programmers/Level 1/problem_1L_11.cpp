//  Created by 성다연 on 2018. 9. 18..
//  Copyright © 2018년 성다연. All rights reserved.
// 문제 제목 : 소수 찾기 [연습문제]

#include "iostream"
#include <string>
#include <vector>

using namespace std;

// 1부터 입력한 n까지의 소수 출력
// 2 제외한 홀수
// 소수 = 2,3,5,7,11,13,17,19.
int solution(int n) {
    int answer = 0;
    for (int i =1;i<=n;i++){
        if(i==2 ||i==3||i==5||i==7) answer += 1;
        if(!(i%3 == 0 || i%2==0 || i%5==0||i==1 ||i%7==0)) {
            answer += 1;
            cout<<"i = " << i<<endl;
        }
    }
    return answer;
}
//int main(){
//    cout<< solution(100);
//    cout<<"\n실행완료";
//    return 0;
//}
