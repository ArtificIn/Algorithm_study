#include <string>
#include <vector>
#include <algorithm>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

string solution(string s) {
	string answer = "";
	vector<char> a, b;

	for (int i = 0; i<s.size(); i++)
		islower(s[i]) ? a.push_back(s[i]) : b.push_back(s[i]);

	sort(a.begin(), a.end(), greater<char>());
	sort(b.begin(), b.end(), greater<char>());
	a.insert(a.end(), b.begin(), b.end());

	for (int i = 0; i < a.size(); i++) answer += a[i];
	return answer;
}
