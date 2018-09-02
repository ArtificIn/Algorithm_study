#include <iostream>
#include <string>
#include <vector>

using namespace std;

int a;
int b;

string solution(int a, int b) {

	int temp = b;
	string day= "요일";
	int dayinfo[] = {31,29,31,30,31,30,31,31,30,31,30,31};
	string arr[] = { "FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU" };

	if (a > 0 && a < 13) {
		

		//2월달인 경우
		if (a == 2) {
			if (b > 28) {
				a += 1;
				b -= 28;
			}
		}
		// 7월까지 
		else if (a < 8) {
			if (a % 2 == 0) {
				if (b > 30) {
					a += 1;
					b -= 31;
				}
			}
			if (a % 2 == 1) {
				if (b > 31) {
					a += 1;
					b -= 31;
				}
			}
		}
		else if (a >= 8) {
			if (a % 2 == 0) {
				if (b >30) {
					a += 1;
					b -= 30;
				}
			}
			if (a % 2 == 1) {
				if (b >31) {
					a += 1;
					b -= 31;
				}
			}
		}

		for (int i = 0; i < a-1; i++) {
			temp += dayinfo[i];
		}


		int tmp = temp % 7 - 1;
		day = arr[tmp];
	}



	string answer = day;
	return answer;
}

int main() {
	cout << "월을 입력하세요. : ";
	cin >> a;
	cout << "일을 입력하세요. : ";
	cin >> b;
	cout << a<<"월"<< b<<"일의 요일은 "<< solution(a,b)<<"입니다."<<endl;
	while (1);
}
