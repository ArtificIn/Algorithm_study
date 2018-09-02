#include <iostream>
#include <string>

using namespace std;

int main(){
	string user= "";
	cout << "문자열을 입력하세요 : ";
	getline(cin, user);

	int pos = user.length()/2;
	string value;
	
	if (user.length() % 2 == 0) { value += user[pos - 1]; }
	value += user[pos];
	
	cout << "결과는 : "<< value << " 입니다. ";
	while (1);
}