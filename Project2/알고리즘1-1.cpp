#include <string>

using namespace std;

string solution(int a, int b) {
	if (!((a>0 && a<13) && (b>0 && b<32))) return 0;

	int temp = b;
	int dayinfo[] = { 31,29,31,30,31,30,31,31,30,31,30,31 };
	string arr[] = { "FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU" };



	for (int i = 0; i < a - 1; i++) 	temp += dayinfo[i];
	int tmp = temp % 7 - 1;
	if (tmp == -1) tmp = 6;
	string answer = arr[tmp];
	return answer;
}