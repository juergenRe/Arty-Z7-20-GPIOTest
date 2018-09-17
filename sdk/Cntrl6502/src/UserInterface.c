/***********************************
 * Interface routines for reading commands from terminal
 * and sending feedback to user
 */

#include <libuio.h>
#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>
#include <errno.h>
#include <getopt.h>
#include <sys/epoll.h>
#include <unistd.h>

int read_line(char *line, int maxCnt);

int main(void){
	char input_line[100];
	uint8_t stop_flag = 0;
	int cc;
	printf("6502 Simulator Monitor program\n");

	while(stop_flag == 0){
		fputs("> ", stdout);
		cc = read_line(input_line, sizeof input_line-2);		// read till EOL
		puts(input_line);

		//check for stop command
		if (strncmp(input_line, "st", cc-1) == 0){
			stop_flag = 1;
		}
	}

	printf("Monitor terminated\n");
	return 0;
}

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
