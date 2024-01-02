#include "matmul.h"
#include "dma.h"

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

void __attribute__ ( ( section ( ".mprjram" ) ) ) firPtr()
{
	//volatile uint32_t *fir_addr = (volatile uint32_t *)0x30000000;
	inst_ptr = (volatile uint32_t *)inst_addr;
	*inst_ptr = 0x00021c3c;
	*inst_ptr = 0x00020054;
	*inst_ptr = 0x00010040;
	*inst_ptr = 0x0002687c;
      
}