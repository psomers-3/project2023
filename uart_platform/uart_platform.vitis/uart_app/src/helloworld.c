#include "platform.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xuartlite.h"

XUartLite uart;
u8 Tx[2][3] = {{75, 23, 56}, {43, 78, 89}};


int main()
{
    init_platform();

    XUartLite_Initialize(&uart, XPAR_UARTLITE_0_DEVICE_ID);
    for(int i = 0; i < 2; i++){
    	XUartLite_Send(&uart, Tx[i], 3);
    }
    cleanup_platform();
    return 0;
}
