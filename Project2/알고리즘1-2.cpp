#include <iostream>
#include <string>

using namespace std;

int main(){
	string user= "";
	cout << "���ڿ��� �Է��ϼ��� : ";
	getline(cin, user);

	int pos = user.length()/2;
	string value;
	
	if (user.length() % 2 == 0) { value += user[pos - 1]; }
	value += user[pos];
	
	cout << "����� : "<< value << " �Դϴ�. ";
	while (1);
}