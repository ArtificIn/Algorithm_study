#include <string>
#include <vector>
#include <algorithm>
#include <iostream>
using namespace std;


vector<string> solution(vector<string> strings, int n) {
	// 1. ���ڿ� n ~ ��ü ���� ��
	// 2. n���ڰ� ���� ��� ���� ���� �� �ݺ�
	// 3. ���� �� ����, n ~ ��ü ���� ��� n�� ����(=��ü) ��
	bool run(string a, string b) {
		if (a == b)
			return a < b;
		else
			return a[n] < b[n];
	}


	sort(strings.begin(), strings.end(), run);
	return strings;
}
