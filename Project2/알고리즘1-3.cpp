#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;



vector<int> solution(vector<int> arr)
{
	vector<int> answer;
	vector<int>::iterator iter;
	int count = 0;

	//sort(arr.begin(), arr.end());
	arr.erase(unique(arr.begin(),arr.end()), arr.end());
	answer.swap(arr);
	
	// [����] ��ư�� ������ ��� ���� �� �� �ֽ��ϴ�.
	cout << "Hello Cpp" << endl;

	return answer;
}

int main(){
	vector<int> arr = {4,4,4,3,3};
	solution(arr);
	while (1);
}