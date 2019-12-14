/*
 * cmd_exec.c
 *
 *  Created on: 29.09.2018
 *      Author: Juergen
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>

#include "port_defs.h"
#include "port_acc.h"
#include "parser.h"
#include "cmd_exec.h"

//--------------------------------------------------------------------
// internal variables
FILE *inData = NULL;
char *fnInData = "indata.txt";

void readInputs();
void fileValue(uint16_t value);
//--------------------------------------------------------------------
// main dispatcher of commands
int exeCMD(uint8_t **pparsedCMD) {
	uint8_t actCMD;
	uint8_t *pActParam = *pparsedCMD++;
	if (pActParam == NULL) return 0;		// no command, just ignore

	//otherwise retrieve cmd and start execution
	actCMD = *pActParam;
	switch(actCMD){
	case QUIT:
		return 1;
	case HLP:
		return (excDisplayHelp());
	case SET:
		return(excSetValue(pparsedCMD));
	case WAIT:
		return(excWait(pparsedCMD));
	case LDF:
		return(excLoadFromFile(pparsedCMD));
	case EXEC:
		return(excExecute(pparsedCMD));
	}
	return 0;
}


//--------------------------------------------------------------------
// implementing executable functions
int excDisplayHelp(void){
	printf("Monitor commands:\n");
	printf("  set <value> <bus> [<edge>]\n");
	printf("     value:  unsigend byte\n");
	printf("     bus:    idb, adl, adh, ctrl, mask\n");
	printf("     edge:   {P1F, P1R, P2F, P2R}\n");
	printf("  ldf <file-name>\n");
	printf("  help\n");
	printf("  quit\n");
	return 0;
}

#define MAX_BUF	255

// execute commands from batch file
int excLoadFromFile(uint8_t **pParamList){
	uint8_t *pParam;
	char *fn;
	int error;

	// read 1st parameter: value
	pParam = *pParamList++;
	if((pParam == NULL) || (*pParam != PT_STR)){
		error = 1;
	} else {
		pParam += sizeof(long);
		fn = (char *)pParam;			// get file name
	}


    switch(error){
    case 0:
    	doBatchExecute(fn);
    	return 0;
    case 1:
    	printf("Error in readFile\n");
    	return 0;
    }

	return 1;
}

void doBatchExecute(char *fn){
    char line_buf[MAX_BUF];
	uint8_t stop_flag = 0;

	// open file with batch commands
	FILE *rdFile = fopen(fn, "r");
    if(NULL == rdFile) {
        printf("Could not find batch file %s\n", fn);
        return;
    }

    while((fgets(line_buf, MAX_BUF-1, rdFile) != NULL) && (!stop_flag)){
		//remove last CR
    	int cc = strlen(line_buf);
		if(line_buf[cc-1]=='\n'){
			line_buf[cc-1] = 0x0;
		}
		// LoadFromFile does not use either CMDdata or parsedCMD after return from this function
		// so we can reuse these data structures without problems
		parseCMD(line_buf, CMDdata, parsedCMD);
		stop_flag = exeCMD(parsedCMD);
    }

    fclose(rdFile);
}

// Trigger execute of commands in FIFO
// wait till execution has finished
int excExecute(uint8_t **pParamList){
	trgExec();
	while(isExeRunning()==0){
		readInputs();
	}
	disablePort();
	return 0;
}

// check, if out FIFO has data and read them into a file
void readInputs(){
	uint32_t rval = readValue();
	uint32_t busval;
	int checking = 1;
	if ((rval & GPIORd_NotEmpty) == 0)
		return;
	// there is some value in FIFO, get it
	setReadEna();
	while(checking){
		rval = readValue();
		if (rval & GPIORd_RdEnaAck){
			enablePort();
			busval = rval & 0xFFFF;
			fileValue(busval);
		}
	}
}

// write read data into file
void fileValue(uint16_t value){
	// open file if not done already
	if(inData == NULL){
		inData = fopen(fnInData, "w");
		if (inData == NULL) return;
	}
	char *sValue = "\0";
	sprintf(sValue, "%04x\n", value);
	fwrite(sValue, 1, sizeof(sValue), inData);
}

// wait a short time
int excWait(uint8_t **pParamList){
	uint8_t *pParam;
	unsigned long value;
	int error;
	// read 1st parameter: value
	pParam = *pParamList++;
	if((pParam == NULL) || (*pParam != PT_DBL)){
		error = 1;
	} else {
		pParam += sizeof(long);
		value = *pParam;		//get 1 byte
		if(value < 0 || value > 1000.0) error = 1;
	}

	switch(error){
	case 0:
		sleep(value);		// stop execution for <value> seconds
		return 0;
	case 1:
		printf("ERROR: first parameter must be a double value greater 0\n");
		return 0;
	}
	return 1;
}

// store value setting in FIFO
int excSetValue(uint8_t **pParamList){
	uint8_t *pParam;
	unsigned long value;
	int mux_val;
	uint16_t edge_val=P1None;
	int error = 0;
	char *name;

	// read 1st parameter: value
	pParam = *pParamList++;
	if((pParam == NULL) || (*pParam != PT_LONG)){
		error = 1;
	} else {
		pParam += sizeof(long);
		value = *pParam;		//get 1 byte
		if (value > 255) error = 1;
	}

	// read 2nd parameter: bus designation, this will be transformed to MUX number
	pParam = *pParamList++;
	if((pParam == NULL) || (*pParam != PT_STR)){
		error = 2;
	} else {
		pParam += sizeof(long);
		name = (char *)pParam;
		mux_val = getMUX(name);		//get 1 byte
		if (mux_val < 0) error = 2;
	}

	// read 3rd parameter: edge definition (optional)
	if(pParam != NULL){			// continue only if parameter available
		if(*pParam != PT_STR){
			error = 3;
		} else {
			pParam += sizeof(long);
			name = (char *)pParam;
			edge_val = getEdge(name);		//get 1 byte
		}
	}

	switch(error){
	case 0:
		writeVal((uint32_t)value, (uint32_t)mux_val, (uint32_t)edge_val);		// write value to GPIO
		return 0;
	case 1:
		printf("ERROR: first parameter must be a byte value\n");
		return 0;
	case 2:
		printf("ERROR: second parameter must be bus name of {idb, adl, adh, ctrl, mask}\n");
		return 0;
	case 3:
		printf("ERROR: fourth parameter must be edge designation of {P1F, P1R, P2F, P2R}\n");
		return 0;
	}
return 1;

}


//-------------------------------------------------------------------
// Sub functions
//-------------------------------------------------------------------


int getMUX(char *name){

	//convert to lower case
	for ( char *p = name; *p; ++p) *p = tolower(*p);

	if (strcmp("idb", name)==0) return MUX_IDB;
	if (strcmp("adl", name)==0) return MUX_ADL;
	if (strcmp("adh", name)==0) return MUX_ADH;
	if (strcmp("ctl0", name)==0) return MUX_CTRL0;
	if (strcmp("ctl1", name)==0) return MUX_CTRL1;
	if (strcmp("mask", name)==0) return MUX_PHIMASK;
	return -1;
}

uint16_t getCntrlID(char *name){
	//convert to lower case
	for ( char *p = name; *p; ++p) *p = tolower(*p);

	if (strcmp("dpc30", name)==0) return DPC30;
	if (strcmp("dpc31", name)==0) return DPC31;
	if (strcmp("dpc32", name)==0) return DPC32;
	if (strcmp("dpc33", name)==0) return DPC33;
	if (strcmp("dpc37", name)==0) return DPC37;
	if (strcmp("dpc38", name)==0) return DPC38;
	if (strcmp("dpc39", name)==0) return DPC39;
	if (strcmp("dpc40", name)==0) return DPC40;
	if (strcmp("dpc36", name)==0) return DPC36;
	return -1;
}

uint16_t getEdge(char *name){
	//convert to lower case
	for ( char *p = name; *p; ++p) *p = tolower(*p);

	if (strcmp("p1f", name)==0) return P1EdgeEna;
	if (strcmp("p1r", name)==0) return (P1EdgeRising || P1EdgeEna);
	if (strcmp("p2f", name)==0) return P2EdgeEna;
	if (strcmp("p2r", name)==0) return (P2EdgeRising || P2EdgeEna);
	return P1None;
}



