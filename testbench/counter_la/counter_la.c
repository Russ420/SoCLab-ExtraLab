// /*
//  * SPDX-FileCopyrightText: 2020 Efabless Corporation
//  *
//  * Licensed under the Apache License, Version 2.0 (the "License");
//  * you may not use this file except in compliance with the License.
//  * You may obtain a copy of the License at
//  *
//  *      http://www.apache.org/licenses/LICENSE-2.0
//  *
//  * Unless required by applicable law or agreed to in writing, software
//  * distributed under the License is distributed on an "AS IS" BASIS,
//  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  * See the License for the specific language governing permissions and
//  * limitations under the License.
//  * SPDX-License-Identifier: Apache-2.0
//  */

// // This include is relative to $CARAVEL_PATH (see Makefile)
// #include <defs.h>
// #include <stub.c>
// // #include "counter_la.h"

// //extern int adder();
// extern int* matmul();
// // extern void dma();


// // --------------------------------------------------------

// /*
// 	MPRJ Logic Analyzer Test:
// 		- Observes counter value through LA probes [31:0] 
// 		- Sets counter initial value through LA probes [63:32]
// 		- Flags when counter value exceeds 500 through the management SoC gpio
// 		- Outputs message to the UART when the test concludes successfuly
// */

// void main()
// {
// 	int j;

// 	/* Set up the housekeeping SPI to be connected internally so	*/
// 	/* that external pin changes don't affect it.			*/

// 	// reg_spi_enable = 1;
// 	// reg_spimaster_cs = 0x00000;

// 	// reg_spimaster_control = 0x0801;

// 	// reg_spimaster_control = 0xa002;	// Enable, prescaler = 2,
//                                         // connect to housekeeping SPI

// 	// Connect the housekeeping SPI to the SPI master
// 	// so that the CSB line is not left floating.  This allows
// 	// all of the GPIO pins to be used for user functions.

// 	// The upper GPIO pins are configured to be output
// 	// and accessble to the management SoC.
// 	// Used to flad the start/end of a test 
// 	// The lower GPIO pins are configured to be output
// 	// and accessible to the user project.  They show
// 	// the project count value, although this test is
// 	// designed to read the project count through the
// 	// logic analyzer probes.
// 	// I/O 6 is configured for the UART Tx line

//         reg_mprj_io_31 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_30 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_29 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_28 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_27 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_26 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_25 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_24 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_23 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_22 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_21 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_20 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_19 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_18 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_17 = GPIO_MODE_MGMT_STD_OUTPUT;
//         reg_mprj_io_16 = GPIO_MODE_MGMT_STD_OUTPUT;

//         reg_mprj_io_15 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_14 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_13 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_12 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_11 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_10 = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_9  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_8  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_7  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_5  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_4  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_3  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_2  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_1  = GPIO_MODE_USER_STD_OUTPUT;
//         reg_mprj_io_0  = GPIO_MODE_USER_STD_OUTPUT;

//         reg_mprj_io_6  = GPIO_MODE_MGMT_STD_OUTPUT;

// 	// Set UART clock to 64 kbaud (enable before I/O configuration)
// 	// reg_uart_clkdiv = 625;
// 	reg_uart_enable = 1;
	
// 	// Now, apply the configuration
// 	reg_mprj_xfer = 1;
// 	while (reg_mprj_xfer == 1);

//         // Configure LA probes [31:0], [127:64] as inputs to the cpu 
// 	// Configure LA probes [63:32] as outputs from the cpu
// 	reg_la0_oenb = reg_la0_iena = 0x00000000;    // [31:0]
// 	reg_la1_oenb = reg_la1_iena = 0xFFFFFFFF;    // [63:32]
// 	reg_la2_oenb = reg_la2_iena = 0x00000000;    // [95:64]
// 	reg_la3_oenb = reg_la3_iena = 0x00000000;    // [127:96]

// 	// Flag start of the test 
// 	reg_mprj_datal = 0xAB400000;

// 	// Set Counter value to zero through LA probes [63:32]
// 	reg_la1_data = 0x00000000;

// 	// Configure LA probes from [63:32] as inputs to disable counter write
// 	reg_la1_oenb = reg_la1_iena = 0x00000000;    

// /*
// 	while (1) {
// 		if (reg_la0_data_in > 0x1F4) {
// 			reg_mprj_datal = 0xAB410000;
// 			break;
// 		}
// 	}
// */	
// 	//volatile uint32_t *inst_ptr;
// 	//volatile uint32_t fir_addr = 0x36000000;
// 	//volatile uint32_t mat_addr = 0x36100000;
	
// 	//reg_mprj_datal = adder() << 16;	

// 	////print("\n");
// 	////print("Monitor: Test 1 Passed\n\n");	// Makes simulation very long!
// 	//reg_mprj_datal = 0xAB510000;
// 	// fir_ptr = (volatile uint32_t*)fir_addr;
// 	// mat_ptr = (volatile uint32_t*)mat_addr;

// 	// // dma test
// 	// *fir_ptr = 0x0000007c;
// 	// // reg_mprj_datal = 0xAB610000;
// 	// // reg_mprj_datal = 0xAB620000;
// 	// // *fir_ptr = 0x0000007c;
// 	// // *fir_ptr = 0x0070007c;
// 	// reg_mprj_datal = 0xAB630000;

// 	int *tmp = matmul();
// 	reg_mprj_datal = *tmp << 16;
// 	reg_mprj_datal = *(tmp+1) << 16;
// 	reg_mprj_datal = *(tmp+2) << 16;
// 	reg_mprj_datal = *(tmp+3) << 16;	

// 	//print("\n");
// 	//print("Monitor: Test 1 Passed\n\n");	// Makes simulation very long!
// 	reg_mprj_datal = *(tmp+9) << 16;
// 	// dma();
// 	(*(volatile uint32_t*)0x36000000) = 0x407c002c;
// 	reg_mprj_datal = 0x60100000;
// 	(*(volatile uint32_t*)0x36100000) = 0x003c407c;
// 	reg_mprj_datal = 0x70200000;
// 	(*(volatile uint32_t*)0x36100000) = 0x143c687c;
// 	reg_mprj_datal = 0x70300000;
// 	(*(volatile uint32_t*)0x36100000) = 0x043c687c;
// 	reg_mprj_datal = 0x70400000;
// 	(*(volatile uint32_t*)0x36100000) = 0x1c3c087c;
// 	reg_mprj_datal = 0x70500000;

// 	// reg_mprj_datal = 0xAB510000;

// }


/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// This include is relative to $CARAVEL_PATH (see Makefile)
#include <defs.h>
#include <stub.c>

//extern int adder();
extern int* matmul();
<<<<<<< HEAD
extern void firPtr();
//extern void dma();
=======
extern void dma();
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426

// --------------------------------------------------------

/*
	MPRJ Logic Analyzer Test:
		- Observes counter value through LA probes [31:0] 
		- Sets counter initial value through LA probes [63:32]
		- Flags when counter value exceeds 500 through the management SoC gpio
		- Outputs message to the UART when the test concludes successfuly
*/

void main()
{
	int j;

	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

	// reg_spi_enable = 1;
	// reg_spimaster_cs = 0x00000;

	// reg_spimaster_control = 0x0801;

	// reg_spimaster_control = 0xa002;	// Enable, prescaler = 2,
                                        // connect to housekeeping SPI

	// Connect the housekeeping SPI to the SPI master
	// so that the CSB line is not left floating.  This allows
	// all of the GPIO pins to be used for user functions.

	// The upper GPIO pins are configured to be output
	// and accessble to the management SoC.
	// Used to flad the start/end of a test 
	// The lower GPIO pins are configured to be output
	// and accessible to the user project.  They show
	// the project count value, although this test is
	// designed to read the project count through the
	// logic analyzer probes.
	// I/O 6 is configured for the UART Tx line

        reg_mprj_io_31 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_30 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_29 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_28 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_27 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_26 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_25 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_24 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_23 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_22 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_21 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_20 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_19 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_18 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_17 = GPIO_MODE_MGMT_STD_OUTPUT;
        reg_mprj_io_16 = GPIO_MODE_MGMT_STD_OUTPUT;

        reg_mprj_io_15 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_14 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_13 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_12 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_11 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_10 = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_9  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_8  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_7  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_5  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_4  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_3  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_2  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_1  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_0  = GPIO_MODE_USER_STD_OUTPUT;

        reg_mprj_io_6  = GPIO_MODE_MGMT_STD_OUTPUT;

	// Set UART clock to 64 kbaud (enable before I/O configuration)
	// reg_uart_clkdiv = 625;
	reg_uart_enable = 1;
	
	// Now, apply the configuration
	reg_mprj_xfer = 1;
	while (reg_mprj_xfer == 1);

        // Configure LA probes [31:0], [127:64] as inputs to the cpu 
	// Configure LA probes [63:32] as outputs from the cpu
	reg_la0_oenb = reg_la0_iena = 0x00000000;    // [31:0]
	reg_la1_oenb = reg_la1_iena = 0xFFFFFFFF;    // [63:32]
	reg_la2_oenb = reg_la2_iena = 0x00000000;    // [95:64]
	reg_la3_oenb = reg_la3_iena = 0x00000000;    // [127:96]

	// Flag start of the test 
	reg_mprj_datal = 0xAB400000;

	// Set Counter value to zero through LA probes [63:32]
	reg_la1_data = 0x00000000;

	// Configure LA probes from [63:32] as inputs to disable counter write
	reg_la1_oenb = reg_la1_iena = 0x00000000;    

/*
	while (1) {
		if (reg_la0_data_in > 0x1F4) {
			reg_mprj_datal = 0xAB410000;
			break;
		}
	}
*/	
	//reg_mprj_datal = adder() << 16;	

	////print("\n");
	////print("Monitor: Test 1 Passed\n\n");	// Makes simulation very long!
	//reg_mprj_datal = 0xAB510000;
	int *tmp = matmul();
	reg_mprj_datal = *tmp << 16;
	reg_mprj_datal = *(tmp+1) << 16;
	reg_mprj_datal = *(tmp+2) << 16;
	reg_mprj_datal = *(tmp+3) << 16;	

	//print("\n");
	//print("Monitor: Test 1 Passed\n\n");	// Makes simulation very long!
	reg_mprj_datal = *(tmp+9) << 16;
<<<<<<< HEAD
	firPtr();
=======
>>>>>>> 669efc15e101b3ce74c530a5c464d143a8c37426

	// dma test
	//dma(0x380000200, 0x380000220);

	reg_mprj_datal = 0xAB510000;

	// volatile uint32_t fir_addr = 0x36000000;
	// volatile uint32_t mat_addr = 0x36100000;
	// volatile uint32_t mprj_addr = 0x2600002c;

	// asm volatile ("sw %0, 0(%1)" : : "r" (0x407c002c), "r" (fir_addr));
	// asm volatile ("sw %0, 0(%1)" : : "r" (0x60100000), "r" (mprj_addr));
	// asm volatile ("sw %0, 0(%1)" : : "r" (0x003c407c), "r" (fir_addr));
	// reg_mprj_datal = 0x70200000;
	// asm volatile ("sw %0, 0(%1)" : : "r" (0x143c687c), "r" (fir_addr));
	// reg_mprj_datal = 0x70300000;
	// asm volatile ("sw %0, 0(%1)" : : "r" (0x043c687c), "r" (fir_addr));
	// reg_mprj_datal = 0x70400000;
	// asm volatile ("sw %0, 0(%1)" : : "r" (0x1c3c087c), "r" (fir_addr));
	// reg_mprj_datal = 0x70500000;
}

