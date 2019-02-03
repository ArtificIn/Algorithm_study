// 문제 이름 : 두 정수 사이의 합 [연습문제]

#include <string>
#include <vector>
using namespace std;

long long solution(int a, int b) {
	long long answer = 0;

	if (a >= b) {
		int temp = a;
		a = b;
		b = temp;
	}

	for (int i = a; i <= b; i++) answer += i;

	return answer;
}
