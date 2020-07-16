// 문제이름 : 나누어 떨어지는 숫자 배열 [연습문제]

#include <string>
#include <vector>
#include <algorithm>
using namespace std;

vector<int> solution_1L_4(vector<int> arr, int divisor) {
	vector<int> answer;
	for (vector <int> ::size_type i = 0; i<arr.size(); i++)
		if (arr[i] / divisor > 0 && arr[i] % divisor == 0) answer.push_back(arr[i]);

	if (answer.empty()) answer.push_back(-1);

	sort(answer.begin(), answer.end());

	return answer;
}
