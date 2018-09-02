#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

void run() {
	int count = 0;
	int num = 0;
	int arr[10][10] = { 0 };
	printf("╪Ж ют╥б : ");
	fflush(stdin);
	scanf("%d", &num);
	;

	for (int i = 0; i < num; i++) {
		for (int j = 0; j < num - i; j++)  arr[i][j] = count++;
		for (int j = 0; j < num - i - 1; j++) arr[j + 1][num - i - 1] = count++;
		for (int j = 0; j < num - i - 1; j++)arr[num - i - 1][num - j - 2] = count++;
		for (int j = 0; j < num - i - 2; j++)arr[num - j - 2][i] = count++;
	}

	for (int i = 0; i < num; i++) {
		for (int j = 0; j < num; j++) printf("%d\t", arr[i][j]);
		printf("\n");
	}
}

int main() {
	run();
	return 0;
}