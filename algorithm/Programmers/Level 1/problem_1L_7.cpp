// 문제 이름 : 문자열 내 p 와 y의 개수 [연습문제]

#include <string>
#include <iostream>
#include <cctype>
using namespace std;

bool solution(string s)
{
	bool answer = true;

	// tolower , toupper
	int pcount = 0;
	int ycount = 0;

	for (int i = 0; i<s.size(); i++) {
		s[i] = tolower(s[i]);
		if ('y' == s[i]) ycount++;
		else if ('p' == s[i]) pcount++;
	}
	if (!(ycount == pcount)) answer = false;

	return answer;
}
