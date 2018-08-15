
/* This is the list of files that must be included to access the peripherals:
 * xtmrctr.h - to access the timer
 * xgpio.h - to access the general purpose I/O
 * xintc.h - access interrupt controller.
 * xil_exception.h - access exception handlers
 * xparameters.h  - General purpose definitions.  Must always be included
 *           when any drivers/print routines are accessed.  This defines
 *           addresses of all peripherals, declares the interrupt service
 *           routines, declare STDIN/STDOUT devices etc.
 */ 

#include <xtmrctr.h>
#include <xintc.h>
#include <xgpio.h>
#include <xparameters.h>
#include <xil_exception.h>
#include <led_ip.h>
#define LEDChan  0

XIntc InterruptController;   /* The instance of the Interrupt Controller */
XTmrCtr TimerCounterInst;   /* The instance of the Timer Counter */

/* Global variables: count is the count displayed using the LEDs. */
unsigned int count=1;
int one_second_flag=0;
/*
 * Interrupt service routine for the timer.
 */
void timer_int_handler(void * CallBackRef, u8 TmrCtrNumber) {
		// Setup call back reference
		XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;

	    // Check if timer counter has expired
		if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
			count++;
			one_second_flag = 1;

			// Display the count on the LEDS and print it using the UART*
    		LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR,LEDChan, count);
    		xil_printf("Count value is: %x\n\r", count);
    	}
}

int TmrCtrIntr(XIntc * IntcInstancePtr,
				  XTmrCtr * TmrCtrInstancePtr,
				  u16 DeviceID,
				  u16 IntrId,
				  u8 TmrCtrNumber)
{

  int count_mod_3;
  int Status;

  // Connect a device handler
  Status = XIntc_Connect(IntcInstancePtr, IntrId,
		  (XInterruptHandler) XTmrCtr_InterruptHandler,
		  (void *)TmrCtrInstancePtr);
  if (Status != XST_SUCCESS)
	  return XST_FAILURE;

  // Start the interrupt controller
  Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
  if (Status != XST_SUCCESS)
	  return XST_FAILURE;

  // Enable the interrupt
  XIntc_Enable(IntcInstancePtr, IntrId);

  // Initialize the exception table
  Xil_ExceptionInit();

  // Register the interrupt controller handler with the exception table
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		  (Xil_ExceptionHandler) XIntc_InterruptHandler, IntcInstancePtr);

  // Enable exceptions
  Xil_ExceptionEnable();
  if (Status != XST_SUCCESS)
	  return XST_FAILURE;

  // Setup the handler for the timer counter
  XTmrCtr_SetHandler(TmrCtrInstancePtr, timer_int_handler, TmrCtrInstancePtr);

  // Set options for timer/counter 0
  XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber,
		  XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

  // Set the number of cycles the timer counts down to [for 1 second at 50 MHz] before
  // interrupting = 0xFFFFFFF - 0x2FAF080 (=50000000) => 0xFD050F80
  XTmrCtr_SetResetValue(TmrCtrInstancePtr, TmrCtrNumber, 0xFD050F80);

  // Start the timer counter
  XTmrCtr_Start(TmrCtrInstancePtr,TmrCtrNumber);

  /* Set the gpio as output on high 8 bits (LEDs)*/
  LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR,LEDChan, ~count);
  xil_printf("The value of count = %d\n\r", count);

     /* Wait for interrupts to occur */
  while(1) {
	if(one_second_flag){
		count_mod_3 = count % 3;
		if(count_mod_3 == 0)
			xil_printf("Interrupt taken at %d seconds \n\r",count);
		one_second_flag=0;
		xil_printf(".");
		}
	}
} 

int main(void)
{

	int Status;

	  // Initialize timer counter
	  Status = XTmrCtr_Initialize(&TimerCounterInst, XPAR_AXI_TIMER_DEVICE_ID);
	  if (Status != XST_SUCCESS)
		  return XST_FAILURE;

	  // Initialize interrupt controller
	  Status = XIntc_Initialize(&InterruptController, XPAR_AXI_INTC_DEVICE_ID);
	  if (Status != XST_SUCCESS)
		  return XST_FAILURE;

	Status = TmrCtrIntr(&InterruptController,
				  &TimerCounterInst,
				  XPAR_AXI_TIMER_DEVICE_ID,
				  XPAR_AXI_INTC_AXI_TIMER_INTERRUPT_INTR,
				  0);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}
