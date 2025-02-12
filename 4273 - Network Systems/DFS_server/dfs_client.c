#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>

#define BUFSIZE 4096
#define CMDLEN 7
#define TIMEOUT 3 //Timeout value in seconds

//Struct containing info on how/where to send a packet
struct packetInfo {
    char *dfs_ip;
    int portNum;
    int sockfd;
    int transmissionLen;
};

/* 
* sendResponse - sends a "packet" of response data to the client
* input: char* buf of max length BUFSIZE; struct httpReqInfo pk containing info on where to send
* output: return 0 upon completion
*/
int sendToServer(char* buf, struct packetInfo pk) {
    int portNum = pk.portNum;
    char *dfs_ip = pk.dfs_ip;
    int sockfd;
    struct sockaddr_in servaddr;

    //Create a socket for the client
    //If sockfd<0 there was an error in the creation of the socket
    if ((sockfd = socket (AF_INET, SOCK_STREAM, 0)) <0) {
        perror("Problem in creating the socket");
        return 1;
    }

    //Creation of the socket
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr= inet_addr(dfs_ip);
    servaddr.sin_port =  htons((unsigned short)portNum); //convert to big-endian order

    //Connection of the client to the socket
    if (connect(sockfd, (struct sockaddr *) &servaddr, sizeof(servaddr))<0) {
        perror("Problem in connecting to the server");
        return 2;
    }

    // Send the list command
    send(sockfd, buf, strlen(buf), 0);
    pk.sockfd = sockfd;

    return 0;
}

int getFile(char *filename) {
    printf("Getting file %s...\n", filename);

    return 0;
}

int putFile(char *filename) {
    printf("Putting file %s...\n", filename);

    return 0;
}

int listFiles() {
    printf("Listing files...\n");

    FILE *config = fopen("dfc.conf", "r");

    if (config == NULL) {
        perror("Error opening file");
        return 1;
    }

    char dfs_info[100];
    struct packetInfo pk;
    // Read and print each line until the end of file
    while (fgets(dfs_info, sizeof(dfs_info), config) != NULL) {
        //printf("%s", dfs_info);
        
        //Extract server ip from config file
        char *no_header = strstr(dfs_info, " ");
        char *no_dfs = strstr(no_header + 1, " ");
        if (no_dfs != NULL) {
            no_dfs = no_dfs + 1;
            char dfs_ip[13];
            int index = 0;
            while(no_dfs[index] != ':' && no_dfs[index] != '\n'){
                dfs_ip[index] = no_dfs[index];
                index++;
            }
            dfs_ip[index + 1] = '\0';

            pk.dfs_ip = dfs_ip;
            printf("DFS IP: %s\n", dfs_ip);
        }

        //Extract server port from config file
        char *port = strstr(dfs_info, ":");
        if (port != NULL) {
            port = port + 1;
            int portNum = atoi(port);
            pk.portNum = portNum;
            printf("Port: %d\n", portNum);
        }

        // Send list file commad to server
        if (sendToServer("list\0", pk) == 0) {
            int n;
            char recvline[BUFSIZE];
            bzero(recvline, BUFSIZE);
            while ((n = recv(pk.sockfd, recvline, BUFSIZE,0)) != 0) {
                printf("String received from the server: %s\n",recvline);
            }
        }
    }

    // Close the file
    fclose(config);

    return 0;
}

//Main Method
int main(int argc, char **argv) {
    char *command;
    char *filename;

    /* check command line arguments */
    if (argc < 2) {
       fprintf(stderr,"usage: %s <command> <filename>...<filename>\n", argv[0]);
       exit(0);
    }

    //Grab the command and filename args
    command = argv[1];
    filename = argv[2];

    //Setup servers
    FILE *config = fopen("dfc.conf", "r");

    if (config == NULL) {
        perror("Error opening file");
        return 1;
    }
    else {
        int num_servers = 0;
        char dfs_info[100];
        while (fgets(dfs_info, sizeof(dfs_info), config) != NULL) {
            num_servers++;
        }

        if (num_servers < 0) {
            char setup_dfs_servers[20];
            sprintf(setup_dfs_servers, "./setup_dfs %d", num_servers);
            system(setup_dfs_servers);
        }
    }

    //Check which command was passed in
    if(strcmp(command, "get") == 0) {
        getFile(filename);
    }
    else if(strcmp(command, "put") == 0){
        putFile(filename);
    }
    else if(strcmp(command, "list") == 0) {
        listFiles();
    }
    else {
        printf("Please use a valid command!\n");
        printf("    get <filename>\n");
        printf("    put <filename>\n");
        printf("    list\n");
    }

    return 0;
}