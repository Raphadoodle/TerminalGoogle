#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MAX_LENGTH 1000

char* replace(char* str, char find, char replace) {
    char *current_pos = strchr(str, find);
    while (current_pos) {
        *current_pos = replace;
        current_pos = strchr(current_pos + 1, find);
    }
    return str;
}

int main(int argc, char **argv) {
    if (argv[1] != NULL ) {
		if (strcmp(argv[1], "-h")==0 || strcmp(argv[1], "--help")==0) {
			printf("TerminalGoogle v1.0\n");
                        printf("© Raphael Tittel\n");
                        printf("usage: tgoogle <search>\n");
			printf("This is a useful way to use google in your terminal. Make sure you have w3m installed.\n");
			return 0;
		}else if (strcmp(argv[1], "--home")==0) {
                        printf("Going to https://google.com");
                        system("w3m https://google.com");
                }else {
			char urlstring[MAX_LENGTH];
			strcpy(urlstring, argv[1]);
			replace(urlstring, ' ', '+');
			char callurl[MAX_LENGTH + 100];
			snprintf(callurl, sizeof(callurl), "w3m https://google.com/search?q=%s", urlstring);
			printf("Going to: %s", callurl);
			system(callurl);
		}
    }else {
        printf("Error: No search specified. Try  -h or --help\n");
	return 1;
    }
}


