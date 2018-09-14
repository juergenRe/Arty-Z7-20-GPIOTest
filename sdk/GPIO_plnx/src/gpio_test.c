/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <libuio.h>
#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>
#include <errno.h>
#include <getopt.h>
#include <sys/epoll.h>

// contains basic info about every uio device after scanning the system
// valid entries will have uio_nb and map_nb >= 0
struct UIODevices {
	long base_addr;
	int uio_nb;
	int map_nb;
	int szChan1;
	int szChan2;
	char name[100];
};

void collectDeviceInfo(struct UIODevices *p_uiod);
void readMap(struct UIODevices *p_uiod, char *uio_name);
void read_device_tree_info(char *map_name, int dt_info[2]);
int readChanData(char *fn, unsigned long *data);

static uint32_t LED_count = 0;
uint32_t control(uint32_t inVal, int cnt);

// GPIO access definitions
#define GPIO_DATA			0x000
#define GPIO_TRI			0x004
#define GPIO2_DATA			0x008
#define GPIO2_TRI			0x00C
#define GIER				0x11C
#define IER					0x128
#define ISR					0x120

#define GIEn				0x80000000
#define IntChan1			1
#define Intchan2			2

void writeGPIOPort(void * h, uint16_t port, uint32_t data){
	ACCESS_REG(h, port) = data;
}


uint32_t readGPIOPort(void * h, uint16_t port){
	return(ACCESS_REG(h, port));
}

int main()
{
	const int NB_UIOD = 5;
	struct UIODevices uiod[NB_UIOD];
	struct UIODevices *p_uiod = uiod;
	uint32_t evt_count = 0;

	for (int i=0;i<NB_UIOD;i++){
		uiod[i].base_addr = 0L;
		uiod[i].uio_nb = -1;
		uiod[i].map_nb = -1;
		uiod[i].szChan1 = 0;
		uiod[i].szChan2 = 0;
		strcpy(uiod[i].name, "");
	}
    collectDeviceInfo(p_uiod);

    int reenable_int = 1;
    int ires = 0;

    UIO *uio_h = UIO_MAP(uiod[0].uio_nb, uiod[0].map_nb);
    void *uio_m = uio_h->mapPtr;
	int uio_fd = uio_h->uio_fd;		//file handle for blocking read from uio

    writeGPIOPort(uio_m, GPIO_TRI, 0);				// all outputs channel 1;
    writeGPIOPort(uio_m, GPIO2_TRI, 0xFFFFFFFF);	// all inputs channel 2;

    writeGPIOPort(uio_m, GIER, GIEn);
    writeGPIOPort(uio_m, IER, 0x02);
    uint32_t actIEn = readGPIOPort(uio_m, IER);
    uint32_t actIStat = readGPIOPort(uio_m, ISR);	// toggle ISR bits to '0'
    writeGPIOPort(uio_m, ISR, actIStat);
    actIStat = readGPIOPort(uio_m, ISR);
    write(uio_fd, &reenable_int, sizeof(int));

    writeGPIOPort(uio_m, GPIO_DATA, LED_count&0x0F);

	struct epoll_event epe = {
	        .data.fd = uio_fd,
	        .events = EPOLLIN,
	};
	struct epoll_event int_evt;

	int epfd = epoll_create(1);
	ires = epoll_ctl(epfd, EPOLL_CTL_ADD, uio_fd, &epe);

    // test reading from uio (channel 2)
    int wcond = 1;
    while(wcond<10){

   		int ret = epoll_wait(epfd, &int_evt, 1, 100);
   		if (ret>0){
   	    	ires = pread(int_evt.data.fd, &evt_count, 0x04, 0);
   	        uint32_t read_val = readGPIOPort(uio_m, GPIO2_DATA);

   	        LED_count = control(read_val, LED_count);
   	        writeGPIOPort(uio_m, GPIO_DATA, LED_count);
   	        actIStat = readGPIOPort(uio_m, ISR);	// toggle ISR bits to '0'
   	        writeGPIOPort(uio_m, ISR, actIStat);
   	        write(uio_fd, &reenable_int, sizeof(int));
   	        printf("[%d] Read value: %d -- ISR: %x\n", wcond, read_val, actIStat);
   	        wcond++;
   		}
   		if(ret < 0){
   			wcond = 0;
   		}
    }

    writeGPIOPort(uio_m, GPIO_DATA, 0);

    //close all open file handles
	ires = epoll_ctl(epfd, EPOLL_CTL_DEL, uio_fd, &epe);
	close(epfd);
    ires = UIO_UNMAP(uio_h);

    return 0;
}

// demo control of LEDs
uint32_t control(uint32_t inVal, int cnt){
	int bit_cnt_up = inVal & 0x01;
	int bit_cnt_dn = inVal & 0x02;
	int bit_cnt_set = inVal & 0x04;
	int bit_cnt_res = inVal & 0x08;

	if (bit_cnt_res){
		cnt = 0;
		return cnt;
	}
	if (bit_cnt_set){
		cnt = 0x0F;
		return cnt;
	}
	if(bit_cnt_up){
		cnt++;
		return cnt;
	}
	if(bit_cnt_dn){
		cnt--;
		return cnt;
	}
	return cnt;
}


/*************************************************************
 *
 *  Crawls the /sys/class/uio and /proc/device-tree/
 *  directories and prints out information about the valid
 *  uio devices that are gpio controllers
 *
 *************************************************************/
void collectDeviceInfo(struct UIODevices *p_uiod) {
    printf("\n");
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
		        printf("[------------------------%s--------------------\n", info->d_name);
		
				readMap(p_uiod, info->d_name);
			    printf("[UIO Device Number: %c\n\n",  info->d_name[3]);

		        num_uio_devices++;
				p_uiod += 1;			    
			}
        }

    }
    printf("Number of GPIO devices: %d\n", num_uio_devices);
    closedir(uio_base);
}

void readMap(struct UIODevices *p_uiod, char *uio_name) {
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

            printf("[\t-------------------%s-----------------\n", map_info->d_name);
            
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
            printf("[\t\tAddress: %s", map_adx);
            printf("[\t\tName: %s", map_name);
            fclose(adx);
            fclose(name);
            printf("[\t\tMap Number: %d\n", map_nb);

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
    printf("[\tNumber of Maps: %d\n", numMaps + 1);
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
	printf("[\t\tNumber of Channels: %d\n", (int)chan_count);
	
	unsigned long cw = 0;
	char chan1_path[100]; //, chan1_width[5];
	sprintf(chan1_path, "%s/xlnx,gpio-width", dtree_base);
	readChanData(chan1_path, &cw);
	//FILE * fchan1 = fopen(chan1_path, "r");
	//fgets(chan1_width, 5, fchan1);
	//fclose(fchan1);
	printf("[\t\tChannel 1 Width: %d\n", (int)cw);
	dt_info[0] = (int)cw;
	
	if(chan_count == 2) {
	    char chan2_path[100]; //, chan2_width[5];
	    sprintf(chan2_path, "%s/xlnx,gpio2-width", dtree_base);
		readChanData(chan2_path, &cw);
	    //FILE * fchan2 = fopen(chan2_path, "r");
	    //fgets(chan2_width, 5, fchan2);
	    //fclose(fchan2);
	    printf("[\t\tChannel 2 Width: %d\n", (int)cw);
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
