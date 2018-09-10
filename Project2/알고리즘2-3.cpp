#include <string>
#include <vector>
#include <algorithm>
#include <iostream>
using namespace std;


vector<string> solution(vector<string> strings, int n) {
	// 1. 문자열 n ~ 전체 인자 비교
	// 2. n인자가 같을 경우 다음 인자 비교 반복
	// 3. 작은 순 정리, n ~ 전체 같을 경우 n앞 문자(=전체) 비교
	bool run(string a, string b) {
		if (a == b)
			return a < b;
		else
			return a[n] < b[n];
	}


	sort(strings.begin(), strings.end(), run);
	return strings;
}
