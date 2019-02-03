// 문제 이름 : 2016년 날짜 구하기 [연습문제]

#include <string>

using namespace std;

string solution(int a, int b) {
	int temp = b;
	int dayinfo[] = { 31,29,31,30,31,30,31,31,30,31,30,31 };
	string arr[] = { "FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU" };

	for (int i = 0; i < a - 1; i++) temp += dayinfo[i];
	int tmp = (temp-1) % 7;
	return arr[tmp];
}
