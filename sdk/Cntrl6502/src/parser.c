/*
 * parser.c
 *
 *  Created on: 23.09.2018
 *      Author: Juergen
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "parser.h"

#define NB_CMDS 7
t_CMD Commands[] = {
		[0]={.keyWord="quit", .cmd=QUIT, .nbParams=0, .paramTypes={[0]=PT_VOID}},
		[1]={.keyWord="ldf", .cmd=LDF, .nbParams=1, .paramTypes={[0]=PT_STR}},
		[2]={.keyWord="set", .cmd=SET, .nbParams=3, .paramTypes={[0]=PT_LONG, [1]=PT_STR, [3]=PT_STR}},
		[3]={.keyWord="wait", .cmd=WAIT, .nbParams=1, .paramTypes={[0]=PT_DBL}},
		[4]={.keyWord="exec", .cmd=EXEC, .nbParams=0, .paramTypes={[0]=PT_VOID}},
		[5]={.keyWord="help", .cmd=HLP, .nbParams=0, .paramTypes={[0]=PT_STR}},
		[6]={.keyWord="test", .cmd=TEST, .nbParams=3, .paramTypes={[0]=PT_LONG, [1]=PT_DBL, [2]=PT_STR}}
};

// align data pointer, return alignment offset in steps of uint8_t
int alignData(uint8_t *p){
	return ((4 - ((long)p & 0x3)) & 0x3);
}

// parse all the parameters needed for that command according to t_CMD definition
void parseParameters(char *cmd_line, uint8_t *data, uint8_t **pparsedCMD, const t_CMD *pCMDdef){
	char *token;
	uint8_t maxParam = pCMDdef->nbParams;
	uint8_t actParamType;
	long lval;
	double dval;

	for (int i=0; i<maxParam; i++){
		//get next token and store it as defined by type
		token= strsep(&cmd_line, " ");
		if(token == NULL || strlen(token) == 0){
			*pparsedCMD = NULL;
			return;
		}
		actParamType = pCMDdef->paramTypes[i];
		data += alignData(data);
		*pparsedCMD++ = data;
		*data++ = actParamType;
		data += alignData(data);
		switch(actParamType){
			case PT_LONG:
				lval = strtoul(token, (char **)0, 0);
				*(long *)data = lval;
				data += sizeof(long);
				break;
			case PT_DBL:
				dval = strtod(token, (char **)0);
				*(double *)data = dval;
				data += sizeof(double);
				break;
			case PT_STR:
				strcpy((char *)data, token);
				data += strlen(token);
				*data++ = 0;					//finish string with 0
				break;
			default:
				;
		}
	}
	*pparsedCMD = NULL;
}

// parse given input line from the beginning till end
// write all user entries in data structure and provide
// a pointer list to each element
void parseCMD(char *cmd_line, uint8_t *data, uint8_t **pparsedCMD){
	t_CMD *pCMDdef = Commands;
	uint8_t *pData = data;
	int cmd_len = strlen(cmd_line);
	*pparsedCMD = NULL;		//no data: first pointer in array is NULL

	if (!(cmd_len>0)) return;
	char *token = strsep(&cmd_line, " ");
	for ( char *p = token; *p; ++p) *p = tolower(*p);
	while(pCMDdef < Commands+NB_CMDS){
		if( *(uint8_t *)pCMDdef == 0) return;			// no more entries: stop
		if(strcmp(token, pCMDdef->keyWord) == 0){
			*pparsedCMD++ = pData;
			*pData++ = pCMDdef->cmd;
			pData += alignData(pData);
			if (pCMDdef->nbParams>0){
				parseParameters(cmd_line, pData, pparsedCMD, pCMDdef);
			}
			return;
		}
		pCMDdef++;
	}
}

// read a line from console
int read_line(char *line, int maxCnt){
	int count = 0;
	char ch = '\000';
	const char BS = 0x08;
	const char EOL = 0x0A;

	while((ch = getchar()) != EOL){
		if (ch == BS){
			count--;
			fputs("BS BS", stdout);
		} else {
			if (count<maxCnt){
				line[count++] = ch;
				fputc(ch, stdout);
			}
		}
	}
	line[count++] = EOL;
	line[count] = 0x0;
	fputc(EOL, stdout);
	return count;
}


