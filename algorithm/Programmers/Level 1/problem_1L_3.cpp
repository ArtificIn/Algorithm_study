// 문제 이름 : 같은 숫자는 싫어 [연습문제]

#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

vector<int> solution(vector<int> arr)
{
	arr.erase(unique(arr.begin(), arr.end()), arr.end());
	return arr;
}
