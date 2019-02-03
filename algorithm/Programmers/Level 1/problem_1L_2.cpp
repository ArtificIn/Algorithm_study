// 문제 이름 : 가운데 글자 가져오기 [연습문제]

#include <string>
#include <vector>

using namespace std;

string solution(string s) {
	string answer = "";

	int pos = s.length() / 2;
	if (s.length() % 2 == 0)  answer += s[pos - 1];
	answer += s[pos];

	return answer;
}
