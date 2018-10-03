/***********************************
 * Interface routines for reading commands from terminal
 * and sending feedback to user
 */

#include <libuio.h>
#include <stdio.h>
//#include <sys/types.h>
//#include <dirent.h>
#include <errno.h>
//#include <getopt.h>
//#include <sys/epoll.h>

#include "port_defs.h"
#include "parser.h"
#include "cmd_exec.h"
#include "port_acc.h"

//#include <unistd.h>
#include <ctype.h>

//---------------------------------------------------------
// start here
//---------------------------------------------------------

int main(void){
	char input_line[100];
	uint8_t stop_flag = 0;
	int cc = 0;
	UIODevice_t* p_uiod;

	printf("--- 6502 Simulator Monitor program ---\n");
	printf("\n Init GPIO... ");
	initGPIO();
	p_uiod = getUIOData();
	// at least one UIO needs to be present in system
	if ((p_uiod == NULL) || (p_uiod->uio_nb == 0)){
		printf("\n No GPIO Devices present. Program terminates.\n");
		return 1;
	}
	cc = UIOOpen(SimuBaseAddr);
	if(cc != UIOErrOK){
		printf(" Error during opening port: %d\n", cc);
		return 1;
	}
	resetSimu();
	printf("OK\n");
	while(stop_flag == 0){
		fputs("> ", stdout);
		cc = read_line(input_line, sizeof input_line-2);		// read till EOL
		//remove last cr
		if(input_line[cc-1]=='\n'){
			input_line[cc-1] = 0x0;
		}
		parseCMD(input_line, CMDdata, parsedCMD);
		stop_flag = exeCMD(parsedCMD);
	}

	cc = UIOClose();
	if (cc != UIOErrOK){
		printf(" Error when closing port\n");
	}
	printf("Monitor terminated\n");
	return 0;
}



