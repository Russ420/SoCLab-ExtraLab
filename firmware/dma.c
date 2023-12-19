#include "dma.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) dma(
    (volatile uint32_t) start, (volatile uint32_t) end)
{
    int bitmask;
    bitmask = 0xff;

    // initialize instruction buffer
    inst = inst & 0x00000000;
    inst = inst + (start & bitmask) << 8;
    inst = inst + (end & bitmask);

    inst_ptr = (volatile uint32_t*)inst_addr;
    inst_ptr = inst;
}