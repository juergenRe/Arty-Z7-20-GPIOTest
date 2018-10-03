/*
 * cmd_exec.h
 *
 *  Created on: 29.09.2018
 *      Author: Juergen
 */

#include <stdint.h>

#ifndef SRC_CMD_EXEC_H_
#define SRC_CMD_EXEC_H_

int exeCMD(uint8_t **pparsedCMD);

int excDisplayHelp(void);
int excExecute(uint8_t **pParamList);
int excSetValue(uint8_t **pParamList);
int excWait(uint8_t **pParamList);
int excLoadFromFile(uint8_t **pParamList);

int getMUX(char *name);
uint16_t getCntrlID(char *name);
uint16_t getEdge(char *name);
void doBatchExecute(char *fn);

#endif /* SRC_CMD_EXEC_H_ */
