#include "matmul.h"

int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
	int i=0;
	int j;
	int k;
	int sum;
	int kk;
	unsigned int count = 0;
	for (i=0; i<SIZE; i++){
		for (j=0; j<SIZE; j++){
			sum = 0;
			for(k = 0;k<SIZE;k++)
				sum += A[(i*SIZE) + k] * B[(k*SIZE) + j];
			result[(i*SIZE) + j] = sum;
		}
	}
	return result;
}

void __attribute__ ( ( section ( ".mprjram" ) ) ) dma() {
	fir_ptr = (volatile uint32_t*)fir_addr;
	mat_ptr = (volatile uint32_t*)mat_addr;

	// dma test
	*fir_ptr = 0x0000007c;
	*fir_ptr = 0x007c007c;
	*fir_ptr = 0x1468007c;
}
