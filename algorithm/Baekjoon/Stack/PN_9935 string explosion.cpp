//
//  PN_9935 string explosion.cpp
//  algorithm
//
//  Created by 성다연 on 16/05/2019.
//  Copyright © 2019 성다연. All rights reserved.
//

#include "iostream"
#include "string"
using namespace std;

/**
 1. 문자열이 폭발문자열을 포함하고 있는 경우 모든 폭발 문자열이 폭발한다. 남은 문자열을 순서대로 붙어 새로운 문자열을 만든다
 2. 새로 생긴 문자열에 폭발 문자열이 있을 수 있다.
 3. 남아있는 문자가 없다면 "FRULA" 출력
 4. 폭발 문자열은 같은 문자를 두개이상 포함하지 않는다.
 
 
 문자열 처리 라이브러리
 strlen = 문자열의 길이 리턴
 strcmp = 두 문자열을 비교, 동일한지( 0 ), 다르면 앞의 문자가 사전순서로 뒤에 있는지(1), 앞의 문자가 사전순서로 앞에있는지 ( -1 ) 리턴함
 char* strcpy(char* dest, char* src) = src의 값을 dest로 복사한다.
 char* strtok(char* str, const char* delimiters) = 공백을 기준으로 문자열을 분리해줌
 char* strchr(char* string, char search) = 원하는 문자를 찾고자하는 문자열
    string2가 string1안에 포함된 문자열이면 string2 검색 후 뒷부분을 출력, 없으면 null을 출력한다
 
 char* strstr(char* string, char* search) = 원하는 서브문자열을 찾고자하는 문자열
 */

void solution9935(int n){
    for (int i = 0; i<n; i++){
        
    }
}

//int main(){
//    string a, b;
//    
//    cout << "문자열 입력 : ";
//    cin >> a;
//    cout << "폭발 문자열 입력 : ";
//    cin >> b;
//    
//    solution9935(a.size() - b.size() + 1);
//}
