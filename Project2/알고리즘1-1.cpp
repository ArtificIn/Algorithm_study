#include <iostream>
#include <string>
#include <vector>

using namespace std;

int a;
int b;

string solution(int a, int b) {

	int temp = b;
	string day= "����";
	int dayinfo[] = {31,29,31,30,31,30,31,31,30,31,30,31};
	string arr[] = { "FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU" };

	if (a > 0 && a < 13) {
		

		//2������ ���
		if (a == 2) {
			if (b > 28) {
				a += 1;
				b -= 28;
			}
		}
		// 7������ 
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
	cout << "���� �Է��ϼ���. : ";
	cin >> a;
	cout << "���� �Է��ϼ���. : ";
	cin >> b;
	cout << a<<"��"<< b<<"���� ������ "<< solution(a,b)<<"�Դϴ�."<<endl;
	while (1);
}
