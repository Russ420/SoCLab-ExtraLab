#ifndef _MATMUL_H
#define _MATMUL_H
#include <stdint.h>

#define SIZE 4
	//int __attribute__ ( ( section ( ".fir" ) ) ) A[SIZE*SIZE] = {0, 1, 2, 3,
	//		0, 1, 2, 3,
	//		0, 1, 2, 3,
	//		0, 1, 2, 3
	//};
	int __attribute__ ( ( section ( ".matmul" ) ) ) A[SIZE*SIZE] = {0, 1, 0, 1,
			0, 1, 0, 1,
			2, 3, 2, 3,
			2, 3, 2, 3
	};
	//int __attribute__ ( ( section ( ".matmul" ) ) ) B[SIZE*SIZE] = {1, 2, 3, 4,
	//	5, 6, 7, 8,
	//	9, 10, 11, 12,
	//	13, 14, 15, 16
	//};
	int __attribute__ ( ( section ( ".matmul" ) ) ) B[SIZE*SIZE] = {1, 2, 5, 6,
		3, 4, 7, 8,
		9, 10, 13, 14,
		11, 12, 15, 16
	};
	int result[SIZE*SIZE];
#endif
