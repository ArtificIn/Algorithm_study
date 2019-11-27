#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

void run() {
	int count = 1;
	int num = 0;
	int arr[10][10] = { 0 };
	printf("수를 입력하세요 : ");
	fflush(stdin);
	scanf("%d", &num);
	;

	for (int i = 0; i < num / 2 + 1; i++) {
		for (int j = i; j < num - i; j++)  arr[i][j] = count++;
		for (int j = i + 1; j < num - i; j++) arr[j][num - i - 1] = count++;
		for (int j = num - i - 2; j >= i; j--) arr[num - i - 1][j] = count++;
		for (int j = num - i - 2; j >= i + 1; j--) arr[j][i] = count++;
	}

	for (int i = 0; i < num; i++) {
		for (int j = 0; j < num; j++) printf("%d\t", arr[i][j]);
		printf("\n");
	}
}

//int main() {
//    run();
//    return 0;
//}
