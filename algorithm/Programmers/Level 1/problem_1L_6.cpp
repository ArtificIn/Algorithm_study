#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

vector<string> solution_1L_6(vector<string> strings, int n) {
	// 1. ���ڿ� n ~ ��ü ���� ��
	// 2. n���ڰ� ���� ��� ���� ���� �� �ݺ�
	// 3. ���� �� ����, n ~ ��ü ���� ��� n�� ����(=��ü) ��
	auto lamba = [&n](string x, string y) ->bool {
		return (x[n] == y[n])? x.compare(y) : x[n]<y[n];
	};
	sort(strings.begin(), strings.end(), lamba);
	return strings;
}
