/*
 * parser.h
 *
 *  Created on: 23.09.2018
 *      Author: Juergen
 */

#include <stdint.h>

#ifndef SRC_PARSER_H_
#define SRC_PARSER_H_

#define QUIT	0		// quit monitor
#define EXEC	1		// execute loaded data
#define WAIT	2		// wait for # of seconds
#define SET		3		// set values on interface
#define HLP		4		// display help
#define LDF		10		// load definitions from file
#define TEST	50		// test command

// parameter types
#define PT_VOID		0
#define PT_LONG		1	// always stored as long
#define PT_DBL		2	// always stored as double
#define PT_STR		3	// always stored as string

typedef struct {
	char keyWord[10];
	uint8_t nbParams;
	uint8_t cmd;
	uint8_t paramTypes[10];
} t_CMD;

#define MAX_DATA	200				// maximum count of elements within data
#define MAX_PARAM	10				// max number of parameters
uint8_t CMDdata[MAX_DATA];			// contains all parsed input data
uint8_t *parsedCMD[MAX_PARAM+1];	// parsed command, each element pointing to either command or the parameters

void parseCMD(char *cmd_line, uint8_t *data, uint8_t **pparsedCMD);
int read_line(char *line, int maxCnt);
int alignData(uint8_t *p);

#endif /* SRC_PARSER_H_ */
