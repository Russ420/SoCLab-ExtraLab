#include "dma.h"

<<<<<<< HEAD
inline void __attribute__ ( ( section ( ".mprjram" ) ) ) dma(
    volatile uint32_t start,  volatile uint32_t end)
{
    volatile uint32_t inst; 
    inst_ptr = (volatile uint32_t*)inst_addr;

    // initialize instruction buffer
    //inst = 0x30670000;
    inst = 0x00000000;
    inst = inst + ((start & 0x000000ff) << 8);
    inst = inst + ((start & 0x00000300) << 10);
    inst = inst + (end & 0x000000ff);
    inst = inst + ((end & 0x00000300) << 8);



    *inst_ptr = inst;

    //return inst;
=======
void __attribute__ ( ( section ( ".mprjram" ) ) ) dma(
  uint32_t start, uint32_t end)
{

    // initialize instruction buffer
	// layout: || 8-bit || 4-bit | 4-bit || 8-bit || 8-bit || 
	// layout: || undefine || start bank | end bank || start addr || end addr ||
    uint32_t inst;

    inst = 0x00000000;

    inst = inst + (end & 0x000000ff);
	inst = inst + (end & 0x00000300) << 12;

    inst = inst + (start & 0x000000ff) << 8;
	inst = inst + (start & 0x00000300) << 16;

    inst_ptr = (volatile uint32_t*)inst_addr;
    *inst_ptr = inst; 
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426
}