#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

vector<string> solution(vector<string> strings, int n) {
	// 1. 문자열 n ~ 전체 인자 비교
	// 2. n인자가 같을 경우 다음 인자 비교 반복
	// 3. 작은 순 정리, n ~ 전체 같을 경우 n앞 문자(=전체) 비교
	auto lamba = [&n](string x, string y) ->bool {
		return (x[n] == y[n])? x.compare(y) : x[n]<y[n];
	};
	sort(strings.begin(), strings.end(), lamba);
	return strings;
}
