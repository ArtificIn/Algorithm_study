//
//  problem4-3.cpp
//  algorithm
//
//  Created by 성다연 on 2018. 9. 27..
//  Copyright © 2018년 성다연. All rights reserved.
//


/*
 (a) 레이저는 여는 괄호와 닫는 괄호의 인접한 쌍 '()'으로 표현합니다. 또한 모든 '()'는 반드시 레이저를 표현합니다.
 (b) 쇠막대기의 왼쪽 끝은 여는 괄호 '('로, 오른쪽 끝은 닫힌 괄호 ')'로 표현됩니다.
 
 쇠막대기와 레이저의 배치를 표현한 문자열 arrangement가 매개변수로 주어질 때,
 잘린 쇠막대기 조각의 총 개수를 return 하도록 solution 함수를 작성해주세요.

 arrangement                return
 ()(((()())(())()))(())      17

 
 
 - 옆의 문자열 ()을 포함해서 양 옆에 문자  ‘(‘ 와 ‘)’ 가 있나?
 1.    ()을 포함하는 ‘(‘  ‘)’ 문을 찾고 () 개수를 세어라
 
 <  1차 () 삭제 > = 레이저 뽑기
 ( ) ( ( (  *   *  ) (  *  )  *  ) ) (  *  )
     ( ( (         ) (     )     ) ) (     )
 
 ( ) 문        |  () 포함 개수   | 조각 수
 1번째 막대기    |     2개        | 1 + 2 = 3
 2번째 막대기    |     1개        | 1 + 1 = 2
 3번째 막대기    |     1개        | 1 + 1 = 2
 
 <  2차 () 삭제 > = 막대기 1줄
 ( ) ( ( ( ( ) ( ) ) ( ( ) ) ( ) ) ) ( ( ) )
     ( ( (         ) (     )     ) ) (     )
     ( (                         ) )
 
 ( ) 문        |  () 포함 개수   | 조각 수
 1번째 막대기    |    4개        | 1 + 4 = 5
 
 < 3차 () 삭제 > = 막대기 2줄
 ( ) ( ( ( ( ) ( ) ) ( ( ) ) ( ) ) ) ( ( ) )
     ( ( (         ) (     )     ) ) (     )
     ( (                         ) )
     (                             )
 
 ( ) 문        |  () 포함 개수   | 조각 수
 1번째 막대기    |    4개        | 1 + 4 = 5

 */


#include <iostream>
#include <string>
#include <algorithm>
using namespace std;


string ReplaceAll(std::string &str, const std::string& from, const std::string& to){
    size_t start_pos = 0; //string처음부터 검사
    while((start_pos = str.find(from, start_pos)) != std::string::npos)  //from을 찾을 수 없을 때까지
    {
        str.replace(start_pos, from.length(), to);
        start_pos += to.length(); // 중복검사를 피하고 from.length() > to.length()인 경우를 위해서
    }
    return str;
}

int solution(string arrangement) {
    string a = arrangement;
    int count=0;
    
    ReplaceAll(a, "()", "*");

    for(int j = 0; j<a.length()/2; j++){
        for(int pos=0;pos<a.length();pos++){
            if(a[pos]=='*'){
                if(a[pos-1]=='('|| a[pos+1]==')'){
                    int i = 1;
                    int star = 1;
                
                    while(a[pos+i]=='*'){
                        if(a[pos+i]!='*') break;
                        star++;
                        i++;
                    }
                
                    if(a[pos-1]=='(' && a[pos+i]==')') {
                        count += star+1;
                        a.erase(a.begin()+pos-1);
                        a.erase(a.begin()+pos+i-1);
                    }
                }
            }
        }
    }
    
    return count;
}

int main(){
    cout<<"The result is = ";
    solution("()(((()())(())()))(())");
    return 0;
}
