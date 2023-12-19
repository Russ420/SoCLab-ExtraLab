#ifndef _DMA_H
#define _DMA_H
#include <stdint.h>


#define SIZE 4
	int __attribute__ ( ( section ( ".adder" ) ) ) A[SIZE*SIZE] = {0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,
	};
	int __attribute__ ( ( section ( ".adder" ) ) ) B[SIZE*SIZE] = {1, 2, 3, 4,
		5, 6, 7, 8,
		9, 10, 11, 12,
		13, 14, 15, 16,
	};
    volatile uint32_t inst;
    volatile uint32_t *inst_ptr;
    volatile uint32_t inst_addr = 0x30000000;
#endif