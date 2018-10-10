// 124 나라의 숫자
//  problem4-2.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 9. 28..
//  Copyright © 2018년 성다연. All rights reserved.

/*
 124 나라가 있습니다. 124 나라에서는 10진법이 아닌 다음과 같은 자신들만의 규칙으로 수를 표현합니다.
 
 124 나라에는 자연수만 존재합니다.
 124 나라에는 모든 수를 표현할 때 1, 2, 4만 사용합니다.
 예를 들어서 124 나라에서 사용하는 숫자는 다음과 같이 변환됩니다.
 
 10진법    124 나라   |  10진법    124 나라
 1          1      |     6        14
 2          2      |     7        21
 3          4      |     8        22
 4          11     |     9        24
 5          12     |     10       41
 
 자연수 n이 매개변수로 주어질 때, n을 124 나라에서 사용하는 숫자로 바꾼 값을 return 하도록 solution 함수를 완성해 주세요.
 
 제한사항
 n은 500,000,000이하의 자연수 입니다.
 입출력 예
 n                |  result
 [1]  = 3*0 +1    |    1
 2  = 3*0 +2      |    2
 3  = 3*0 +3      |    4
 
 
 [4]  = 3*1 +1    |   1 1
 5  = 3*1 +2      |   1 2
 6  = 3*1 +3      |   1 4
 
 7  = 3*2 +1      |   2 1
 8  = 3*2 +2      |   2 2
 9  = 3*2 +3      |   2 4
 
 10 = 3*3 +1      |   4 1
 11 = 3*3 +2      |   4 2
 12 = 3*3 +3      |   4 4
 
 [13] = 3*(3+1) +1|   11 1

 [4]  = 11
 [13] = 111
 [40] = 1111
 */

#include <iostream>
#include <string>
using namespace std;

string solution(int n) {
    string answer = "";
    string arr [] = {"4","1","2"};
    
    while(n>0){
        int pos = n%3;
        n /= 3;
        
        if(pos == 0) n -= 1;
        answer = arr[pos]+ answer;
    }
    return answer;
}

int main(){
    cout<<"input( 3 )= "<<solution(3)<<endl;
//    cout<<"input( 4 )= "<<solution(4)<<endl;
//    cout<<"input( 7 )= "<<solution(7)<<endl;
//    cout<<"input( 10 )= "<<solution(10)<<endl;
    return 0;
}
