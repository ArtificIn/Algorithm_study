#include <string>
#include <ctype.h>
using namespace std;

bool solution_1L_9(string s) {
	bool answer = true;
	// isdigit(int i) = i를 0~9 사이의 숫자인지 판별
	if (!(s.size() == 4 || s.size() == 6)) answer = false;
	for (int i = 0; i<s.size(); i++) if (!isdigit(s[i])) answer = false;
	return answer;
}
