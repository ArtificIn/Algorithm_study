//  Created by 성다연 on 2018. 9. 18..
//  Copyright © 2018년 성다연. All rights reserved.
#include <iostream>
#include <vector>
#include <string>

using namespace std;

string solution(vector<string> seoul) {
    string answer="김서방은 ";
    for(int i = 0; i<seoul.size();i++)
        if(seoul[i] == "Kim") answer += to_string(i) + "에 있다";
    return answer;
}

int main() {
    vector<string> answer;
    answer = {"Seoung","Kim"};
    cout<< solution(answer);
    return 0;
}
