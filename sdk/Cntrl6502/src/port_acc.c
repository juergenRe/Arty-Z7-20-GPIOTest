/*
 * port_acc.c
 *
 *  Created on: 29.09.2018
 *      Author: Juergen
 */
#include <stdio.h>
#include <dirent.h>

#include <libuio.h>

#include "port_defs.h"
#include "port_acc.h"

//--------------------------------------------------------------------
//data definitions
UIODevice_t uiod[NB_UIOD];
int isInitialized = 0;
UIO *uio_h = NULL;
void *uio_m = NULL;
int uio_fd = 0;		//file handle for blocking read from uio

//--------------------------------------------------------------------
//function declarations
void collectDeviceInfo(UIODevice_t *p_uiod);
void readMap(UIODevice_t *p_uiod, char *uio_name);
void read_device_tree_info(char *map_name, int dt_info[2]);
int readChanData(char *fn, unsigned long *data);

//--------------------------------------------------------------------
// Basic functions enabling the access to the UIO port
int UIOOpen(long uio_address){
	int res = UIOErrAddressInvalid;
	if(isInitialized == 0){
		return UIOErrNotInit;
	}
	UIODevice_t *p_uiod = uiod;
	for(int i=0;i<NB_UIOD;i++){
		if(p_uiod->base_addr == uio_address){
			res = UIOErrOK;
			break;
		}
		p_uiod++;
	}
	if(res != UIOErrOK)
		return res;

	uio_h = UIO_MAP(p_uiod->uio_nb, p_uiod->map_nb);
	uio_m = uio_h->mapPtr;
	uio_fd = uio_h->uio_fd;
	return res;
}

int UIOClose(){
	int res = UIO_UNMAP(uio_h);
	if(res < 0)
		return UIOUnMapError;
	else{
		uio_h = NULL;
		uio_m = NULL;
		uio_fd = 0;
		return UIOErrOK;
	}
}

void writeGPIOPort(void *h, uint16_t port, uint32_t data){
	ACCESS_REG(h, port) = data;
}


uint32_t readGPIOPort(void *h, uint16_t port){
	return(ACCESS_REG(h, port));
}

//--------------------------------------------------------------------
// functions related to 6502 simulation

// set up ports for simulation purpose and reset simulation engine; interrupts disabled
void resetSimu(void){
	if(uio_h != NULL && uio_m != NULL){
		// set up ports
	    writeGPIOPort(uio_m, GPIO_TRI, 0);					// all outputs channel 1;
	    writeGPIOPort(uio_m, GPIO2_TRI, 0xFFFFFFFF);		// all inputs channel 2;
	    writeGPIOPort(uio_m, GPIO_DATA, GPIOWrInactive);	// all outputs 0
	    writeGPIOPort(uio_m, GIER, GIDis);

	    // reset simulation part
		writeGPIOPort(uio_m, GPIO_DATA, (GPIOWr_Enable | GPIOWr_Reset));
	    writeGPIOPort(uio_m, GPIO_DATA, GPIOWrInactive);

		// check if signals on read port are as expected
		uint32_t rval = readGPIOPort(uio_m, GPIO2_DATA);
		if((rval & GPIORdIdleMask)!=0){
			printf("  <ResetSimu>: Simulation engine in undefined state: %08x.", rval);
			return;
		}
		printf("Simulation engine ready.\n");
	}else{
		printf("  <ResetSimu>: Port not accessible\n");
	}
}

void writeVal(uint32_t value, uint32_t mux_val, uint32_t edge_val) {
	uint32_t wval = (GPIOWr_Enable | edge_val | mux_val | value);
	printf("   ...Write to GPIO: %02x %d %04x val: %08x\n", (unsigned int)value, mux_val, edge_val, wval);
	writeGPIOPort(uio_m, GPIO_DATA, (wval | GPIOWr_FIFOInClk ));
	writeGPIOPort(uio_m, GPIO_DATA, wval);
    writeGPIOPort(uio_m, GPIO_DATA, GPIOWrInactive);
}

// functions for reading data from GPIO
uint32_t readValue(){
	return(readGPIOPort(uio_m, GPIO2_DATA));
}

uint8_t isExeRunning(){
	uint32_t rval = readGPIOPort(uio_m, GPIO2_DATA);
	return((rval&GPIORd_ExeRunning)!= 0);
}

uint8_t isNewReadValue(){
	uint32_t rval = readGPIOPort(uio_m, GPIO2_DATA);
	return((rval&GPIORd_RdEnaAck)!= 0);
}

uint8_t isReadValueAvailable(){
	uint32_t rval = readGPIOPort(uio_m, GPIO2_DATA);
	return((rval&GPIORd_NotEmpty)!= 0);
}


// trigger execution of stored entries in FIFO
void trgExec(void){
	writeGPIOPort(uio_m, GPIO_DATA, GPIOWr_Enable | GPIOWr_Execute);
	writeGPIOPort(uio_m, GPIO_DATA, GPIOWr_Enable);			// keep enable till execution has finished
}

void setReadEna(void){
	writeGPIOPort(uio_m, GPIO_DATA, GPIOWr_Enable | GPIOWr_RdEnable);
}

void disablePort(void){
    writeGPIOPort(uio_m, GPIO_DATA, GPIOWrInactive);
}

void enablePort(void){
    writeGPIOPort(uio_m, GPIO_DATA, GPIOWr_Enable);
}

void initGPIO(void){
	UIODevice_t *p_uiod = uiod;
	for (int i=0;i<NB_UIOD;i++){
		uiod[i].base_addr = 0L;
		uiod[i].uio_nb = -1;
		uiod[i].map_nb = -1;
		uiod[i].szChan1 = 0;
		uiod[i].szChan2 = 0;
		strcpy(uiod[i].name, "");
	}
    collectDeviceInfo(p_uiod);
    isInitialized = 1;
}

UIODevice_t *getUIOData(void){
	if(isInitialized>0)
		return uiod;
	else
		return NULL;
}



/*************************************************************
 * Code originally provided by Digilent
 *************************************************************/
/*************************************************************
 *
 *  Crawls the /sys/class/uio and /proc/device-tree/
 *  directories and prints out information about the valid
 *  uio devices that are gpio controllers
 *
 *  Code copied from gpioUtility and modified in order to
 *  return additional information
 *
 *************************************************************/
void collectDeviceInfo(UIODevice_t *p_uiod) {
    //printf("\n");
    short num_uio_devices = 0;
    struct dirent * info;

    DIR *uio_base = opendir("/sys/class/uio");

    if(NULL == uio_base) {
        perror("Could not open the uio base directory");
        exit(EXIT_FAILURE);
    }
    while(1) {
        info = readdir(uio_base);
        if(NULL == info) {
            break;
        }

        // Only dig deeper if we're not look at the parent or current directory
        if((strcmp("..", info->d_name) != 0) && (strcmp(".", info->d_name) != 0)) {
		    char stub[100];
		    sprintf(stub, "/sys/class/uio/%s/name", info->d_name);
		    FILE *name = fopen(stub, "r");
		    if(NULL == name) {
		        fprintf(stderr, "Could not find 'name' field for this UIO device: %s\n", info->d_name);
		        break;
		    }

		    // Check to see if the UIO device is a gpio controller
		    char name_buf[5];
		    fgets(name_buf, 5, name);
		    fclose(name);

		    if(!strcmp(name_buf, "gpio")) {
		        //printf("[------------------------%s--------------------\n", info->d_name);

				readMap(p_uiod, info->d_name);
			    //printf("[UIO Device Number: %c\n\n",  info->d_name[3]);

		        num_uio_devices++;
				p_uiod += 1;
			}
        }

    }
    //printf("Number of GPIO devices: %d\n", num_uio_devices);
    closedir(uio_base);
}

void readMap(UIODevice_t *p_uiod, char *uio_name) {
    char uio_maps[100];
    int map_nb;
    int uio_nb = atoi(&uio_name[3]);

    sprintf(uio_maps, "/sys/class/uio/uio%d/maps", uio_nb);
    DIR *map_base = opendir(uio_maps);
    struct dirent *map_info;
    short numMaps = -1;
    while(1) {
        map_info = readdir(map_base);
        if(NULL == map_info) {
            break;
        }

        // No need to run analysis on the parent or current directory
        if((strcmp("..", map_info->d_name) != 0) && (strcmp(".", map_info->d_name) != 0)) {
        	map_nb = atoi(&map_info->d_name[3]);
            if(map_nb > numMaps) {
                numMaps = map_nb;
            }

            //printf("[\t-------------------%s-----------------\n", map_info->d_name);

            char part_info[100];
            sprintf(part_info, "/sys/class/uio/uio%d/maps/map%d", uio_nb, map_nb);

            // Print name and address information about the map
            char address_path[100], name_path[100], map_adx[50], map_name[50];
            sprintf(address_path, "%s/addr", part_info);
            sprintf(name_path, "%s/name", part_info);
            FILE *adx = fopen(address_path, "r");
            FILE *name = fopen(name_path, "r");
            if(NULL == adx || NULL == name) {
                perror("Error opening the name or address file for UIO");
            }
            fgets(map_adx, 50, adx);
            fgets(map_name, 50, name);
            //printf("[\t\tAddress: %s", map_adx);
            //printf("[\t\tName: %s", map_name);
            fclose(adx);
            fclose(name);
            //printf("[\t\tMap Number: %d\n", map_nb);

            char *index_of = strchr(map_name, '\n');
            *index_of = '\0';

			int chan_sz_info[2] = {0,0};
			read_device_tree_info(map_name, chan_sz_info);
			char dmy[4];		//dummy
			unsigned int addr;
			sscanf(map_adx, "%2s%8x", dmy, &addr);

			//update device info
	        p_uiod->uio_nb = uio_nb;
			p_uiod->map_nb = map_nb;
			p_uiod->base_addr = (long)addr;
			p_uiod->szChan1 = chan_sz_info[0];
			p_uiod->szChan2 = chan_sz_info[1];
			strcpy(p_uiod->name, uio_name);
        }


    }
    //printf("[\tNumber of Maps: %d\n", numMaps + 1);
    closedir(map_base);
}

// retrieve additional information about controller via device tree
// return channel widths within dt_info
void read_device_tree_info(char *map_name, int dt_info[2]){
	// Use the name information to check out the device-tree entry and get
	// Information about the dimensions and specifications
	// Of the gpio controller
	char dtree_base[100];
	sprintf(dtree_base, "/proc/device-tree%s", map_name);

	// Get the number of channels
	char channel_path[100]; //, channel_buf[5];
	sprintf(channel_path, "%s/xlnx,is-dual", dtree_base);
	unsigned long chan_count = 0;
	int err = readChanData(channel_path, &chan_count);
	if (err != 0){
		return;
	}
	chan_count += 1;
	//printf("[\t\tNumber of Channels: %d\n", (int)chan_count);

	unsigned long cw = 0;
	char chan1_path[100]; //, chan1_width[5];
	sprintf(chan1_path, "%s/xlnx,gpio-width", dtree_base);
	readChanData(chan1_path, &cw);
	//FILE * fchan1 = fopen(chan1_path, "r");
	//fgets(chan1_width, 5, fchan1);
	//fclose(fchan1);
	//printf("[\t\tChannel 1 Width: %d\n", (int)cw);
	dt_info[0] = (int)cw;

	if(chan_count == 2) {
	    char chan2_path[100]; //, chan2_width[5];
	    sprintf(chan2_path, "%s/xlnx,gpio2-width", dtree_base);
		readChanData(chan2_path, &cw);
	    //FILE * fchan2 = fopen(chan2_path, "r");
	    //fgets(chan2_width, 5, fchan2);
	    //fclose(fchan2);
	    //printf("[\t\tChannel 2 Width: %d\n", (int)cw);
		dt_info[1] = (int)cw;
	}
}

// read binary data from file in reversed order
int readChanData(char *fn, unsigned long *data){
	const int NB_BYT_LONG = 4;
	unsigned char cb[NB_BYT_LONG];
	union chan_data {
		unsigned char db[NB_BYT_LONG];
		unsigned long dl;
	} CD;

	FILE * fchannel = fopen(fn, "rb");
	if(NULL == fchannel) {
	    perror("Could not open the channel file");
	    return -1;
	}

	fread(cb, 1, NB_BYT_LONG, fchannel);
	fclose(fchannel);
	for (int i=0;i<NB_BYT_LONG;i++){
		CD.db[NB_BYT_LONG-1-i] = cb[i];
	}
	*data = CD.dl;
	return 0;
}




