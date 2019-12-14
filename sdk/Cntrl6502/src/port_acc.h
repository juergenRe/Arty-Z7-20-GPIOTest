/*
 * port_acc.h
 *
 *  Created on: 29.09.2018
 *      Author: Juergen
 */

#include <stdint.h>

#ifndef SRC_PORT_ACC_H_
#define SRC_PORT_ACC_H_

// GPIO access definitions
#define GPIO_DATA				0x000
#define GPIO_TRI				0x004
#define GPIO2_DATA				0x008
#define GPIO2_TRI				0x00C
#define GIER					0x11C
#define IER						0x128
#define ISR						0x120

#define GIEn					0x80000000
#define GIDis					0x00000000
#define IntChan1				1
#define Intchan2				2

#define UIOErrOK				0
#define UIOErrNotInit			-1
#define UIOErrAddressInvalid	-2
#define UIOUnMapError			-3

// contains basic info about every uio device after scanning the system
// valid entries will have uio_nb and map_nb >= 0
typedef struct {
	long base_addr;
	int uio_nb;
	int map_nb;
	int szChan1;
	int szChan2;
	char name[100];
} UIODevice_t;

#define NB_UIOD 5		//reserve for 5 UIOD structures

void initGPIO(void);
UIODevice_t* getUIOData(void);
int UIOOpen(long uio_address);
int UIOClose();
void resetSimu(void);

void writeVal(uint32_t value, uint32_t mux_val, uint32_t edge_val);
void trgExec(void);
void disablePort(void);
void enablePort(void);
void setReadEna(void);

uint32_t readValue();
uint8_t isExeRunning();
uint8_t isNewReadValue();
uint8_t isReadValueAvailable();

#endif /* SRC_PORT_ACC_H_ */
