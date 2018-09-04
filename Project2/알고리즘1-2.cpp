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