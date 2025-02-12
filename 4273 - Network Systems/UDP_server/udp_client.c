/* 
 * udpclient.c - A simple UDP client
 * usage: udpclient <host> <port>
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 

#define BUFSIZE 1024
#define CMDLEN 7
#define TIMEOUT 3 //Timeout value in seconds

//Struct containing info on how/where to send a packet
struct packetInfo {
  int sockfd;
  int addrlen;
  struct sockaddr_in addr;
};

/* 
 * error - wrapper for perror
 */
void error(char *msg) {
    perror(msg);
    exit(0);
}

/*
* getFile - ask server for a file, if server responds adds file to local directory
* input: char* filename of file to retrieve; 
*        char* buf empty buf to store response;
*        struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int getFile(char* filename, char* buf, struct packetInfo pk) {
    //Initialize packet info
    int n;
    int sockfd = pk.sockfd;
    int serverlen = pk.addrlen;
    struct sockaddr_in serveraddr = pk.addr;
    
    //Open/Create file to copy info into
    FILE *fp = fopen(filename, "w");

    //If the file exists/created successfully continue
    if(fp != NULL) {
    int receiving = 1;
    do {
        n = recvfrom(sockfd, buf, BUFSIZE, 0, &serveraddr, &serverlen);
        if (n < 0) {
            printf("Error in recvfrom\n");
        }
        else {
            if (receiving = strcmp("END_OF_TRANSMISSION\0", buf))
                fprintf(fp, buf);
            else
                fclose(fp);
        }
        bzero(buf, BUFSIZE);
    } while(receiving && n > -1);
    }
    else {
    printf("Error finding/creating file to write gotten file to\n");
    }

    return 0;
}

/*
* putFile - ask server to store a file; if server responds then add the file to server's local directory
* input: char* filename of file to retrieve; 
*        char* buf empty buf to store response;
*        struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int putFile(char* filename, char* recvBuf, struct packetInfo pk) {
    //Open file to send
    FILE *fp = fopen(filename, "rb");

    //If the file is present on the client then continue
    if(fp != NULL) {
        //Initialize necessary variables
        int n;
        int sockfd = pk.sockfd;
        int serverlen = pk.addrlen;
        struct sockaddr_in serveraddr = pk.addr;
        size_t bytesRead;
        
        //Send initial command to server
        char sendBuf[BUFSIZE] = "put ";
        strcat(sendBuf, filename);
        packetSend(sendBuf, pk);
        
        do {
            //Wait for server to acknowledge
            int receiving = 0;
            while(receiving < TIMEOUT) {
                bzero(recvBuf, BUFSIZE);
                n = recvfrom(sockfd, recvBuf, BUFSIZE, 0, (struct sockaddr *) &serveraddr, &serverlen);
                if (n < 0) {
                    printf("ERROR in recvfrom while sending file. Resending put request...\n");
                    packetSend(sendBuf, pk);
                    receiving++;
                }
                else if(strcmp("ACK_PUT\0", recvBuf) || strcmp("END_OF_TRANSMISSION\0", recvBuf)) {
                    receiving = TIMEOUT + 1;
                }
            }
            
            //If server does not respond to put request after TIMEOUT attempts then return to menu
            if(receiving == TIMEOUT) {
                printf("Lost connection to server! Returning to menu...\n");
                return 0;
            }
            //If the received message was not acknowledging the end of transmission then send more data
            else if(strcmp("END_OF_TRANSMISSION\0", recvBuf) != 0) {
                //Since the last packet was acknowledged clear buffer
                bzero(sendBuf, BUFSIZE);
                //Read length of buffer from the file
                bytesRead = fread(sendBuf, 1, sizeof(sendBuf), fp);
                //Send buffer contents to server
                if (bytesRead > 0) {
                    n = sendto(sockfd, sendBuf, strlen(sendBuf), 0, &serveraddr, serverlen);
                }
                else {
                   n = sendto(sockfd, "END_OF_TRANSMISSION\0", strlen("END_OF_TRANSMISSION\0"), 0, &serveraddr, serverlen);
                }
                if (n < 0)
                    error("ERROR in sendto\n");
            }
        } while(strcmp(recvBuf, "END_OF_TRANSMISSION\0") != 0);
    }
    else {
        printf("Error finding/opening file to send to server\n");
    }
    
    fclose(fp);
    return 0;
}

/*
* deleteFile - ask server to remove a file; if server responds then display the file has been removed
* input: char* filename of file to remove; 
*        char* buf empty buf to store response; 
*        struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int deleteFile(char* filename, char* buf, struct packetInfo pk) {
    //Initialize packet info
    int n;
    int sockfd = pk.sockfd;
    int serverlen = pk.addrlen;
    struct sockaddr_in serveraddr = pk.addr;
    
    //Send initial command to server
    char deleteCmd[BUFSIZE] = "delete ";
    strcat(deleteCmd, filename);
    packetSend(deleteCmd, pk);
    
    //while receiving filenames, print them out
    int receiving = 0;
    while(receiving < TIMEOUT) {
        bzero(buf, BUFSIZE);
        n = recvfrom(sockfd, buf, BUFSIZE, 0, (struct sockaddr *) &serveraddr, &serverlen);
        if (n < 0) {
            printf("ERROR in recvfrom while listing files. Resending ls request...\n");
            packetSend(deleteCmd, pk);
            receiving++;
        }
        else if(strcmp("SUCC_DEL\0", buf) == 0) {
            printf("Successfully removed %s\n", filename);
            receiving = TIMEOUT + 1;
        }
        else if(strcmp("FAIL_DEL\0", buf) == 0){
            printf("Failed to remove %s\n", filename);
            receiving = TIMEOUT + 1;
        }
    }
    
    //If the server never responds to exit request
    if(receiving == TIMEOUT) {
        printf("Lost connection to server! Returning to menu...\n");
    }
    
    return 0;
}

/*
* listFiles - ask server to list all files in the current directory
* input: char* buf empty buf to store response; struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int listFiles(char* buf, struct packetInfo pk) {
    int n;
    int sockfd = pk.sockfd;
    int serverlen = pk.addrlen;
    struct sockaddr_in serveraddr = pk.addr;
    
    //Send initial command to server
    packetSend("ls", pk);
    
    //while receiving filenames, print them out
    int receiving = 0;
    while(receiving < TIMEOUT) {
        bzero(buf, BUFSIZE);
        n = recvfrom(sockfd, buf, BUFSIZE, 0, (struct sockaddr *) &serveraddr, &serverlen);
        if (n < 0) {
            printf("ERROR in recvfrom while listing files. Resending ls request...\n");
            packetSend("ls", pk);
            receiving++;
        }
        else if(strcmp("END_OF_TRANSMISSION\0", buf) == 0) {
            receiving = TIMEOUT + 1;
        }
        else {
            printf("%s\n", buf);
        }
    }
    
    //If the server never responds to exit request
    if(receiving == TIMEOUT) {
        printf("Lost connection to server! Returning to menu...\n");
    }
    
    return 0;
}

/*
* endConnections - ask server to end connection
* input: char* buf empty buf to store response; struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int endConnection(char* buf, struct packetInfo pk) {
    int n;
    int sockfd = pk.sockfd;
    int serverlen = pk.addrlen;
    struct sockaddr_in serveraddr = pk.addr;
    
    //Send initial command to server
    packetSend("exit", pk);
    
    //Wait to receive acknowledgement to exit, resend until acknowledged or connection times out
    int receiving = 0;
    while(receiving < TIMEOUT) {
        bzero(buf, BUFSIZE);
        n = recvfrom(sockfd, buf, BUFSIZE, 0, (struct sockaddr *) &serveraddr, &serverlen);
        
        if (n < 0) {
            printf("ERROR in recvfrom while exiting. Resending exit request...\n");
            packetSend("exit", pk);
            receiving++;
        }
        else if (strcmp("END_OF_TRANSMISSION\0", buf) == 0) {
            printf("Server says Goodbye!\n");
            receiving = TIMEOUT + 1;
        }
    }
    
    //If the server never responds to exit request
    if(receiving == TIMEOUT) {
        printf("Lost connection to server! Exiting anyway...\n");
    }
    
    return 0;
}

/* 
* packetSend - sends a "packet" of data to the client
* input: char* buf of max length BUFSIZE; struct packetInfo pk containing info on where to send
* output: return 0 on completion
*/
int packetSend(char* buf, struct packetInfo pk) {
    int n;
    int sockfd = pk.sockfd;
    int serverlen = pk.addrlen;
    struct sockaddr_in serveraddr = pk.addr;

    printf("Packet: %s w/ len %d\n", buf, strlen(buf));
    
    /* 
     * sendto: echo the input back to the client 
     */
    n = sendto(sockfd, buf, strlen(buf), 0, (struct sockaddr *) &serveraddr, serverlen);
    if (n < 0)
      error("ERROR in sendto");
    
    return 0;
}

/*
* manageRequest - Take in the buffer of user input and if valid carry out the specified option
* input: char* buf of user input, struct packetInfo pk containing sending info to pass to other function calls
* output: return 0 on completion
*/
int manageRequest(char* buf, struct packetInfo pk) {  
    /* Grab command and filename(if present) from input
    If input is acceptable length, then properly terminate string and continue */
    size_t lenbuf = strlen(buf);
    if (lenbuf > 1 && buf[lenbuf - 1] == '\n') {
        //Make sure the buffer is properly terminated
        buf[lenbuf - 1] = '\0';

        //Grab the command
        char cmdInput[CMDLEN];
        int i = 0;
        while(buf[i] != ' ' && buf != '\0' && i < lenbuf) {
            cmdInput[i] = buf[i];
            i++;
        }
        cmdInput[i] = '\0';

        //Grab the filename if present
        int fnLen = 0;
        char filename[lenbuf - strlen(cmdInput)];
        if(lenbuf - strlen(cmdInput) > 1) {
            i++;
            int j = 0;
            while(buf[i] != ' ' && buf != '\0' && i < lenbuf) {
                filename[j] = buf[i];
                j++;
                i++;
            }
            filename[j] = '\0';
            printf("Filename: %s\n", filename);
            fnLen = strlen(filename);
        }
        
        //Prepare for messaging
        printf("\nEstablshing Connection...\n\n");
        
        //Compare input to valid options
        //Retrieves a file from the server and stores it locally
        if (strcmp(cmdInput, "get") == 0) {
            if(fnLen > 1) {
                printf("Grabbing file %s from server\n", filename);
                getFile(filename, buf, pk);
            }
            else {
                printf("Please specifiy a file to get!\n");
            }
        }
        //Sends a file to server to store
        else if(strcmp(cmdInput, "put") == 0) {
            if(fnLen > 1) {
                printf("Sending file %s to server\n", filename);
                putFile(filename, buf, pk);
            }
            else {
                printf("Please specifiy a file to send!\n");
            }
        }
        //Deletes a file on the server given its name
        else if(strcmp(cmdInput, "delete") == 0) {
            if(fnLen > 1) {
                printf("Deleting file %s from server\n", filename);
                deleteFile(filename, buf, pk);
            }
            else {
                printf("Please specifiy a file to delete!\n");
            }
        }
        //List the files in the server's current directory
        else if(strcmp(cmdInput, "ls") == 0) {
            printf("Listing files from server:\n");
            listFiles(buf, pk);
        }
        else if (strcmp(cmdInput, "exit") == 0) {
            printf("Exiting:\n");
            return endConnection(buf, pk);
        }
    }
    else {
        printf("Invalid input:\"%s\"\n", buf);
    }
    
    //Return 1 if not exiting
    return 1;
}

//Main Method
int main(int argc, char **argv) {
    int sockfd, portno, n;
    int serverlen;
    struct sockaddr_in serveraddr;
    struct hostent *server;
    char *hostname;
    char buf[BUFSIZE];

    /* check command line arguments */
    if (argc != 3) {
       fprintf(stderr,"usage: %s <hostname> <port>\n", argv[0]);
       exit(0);
    }
    hostname = argv[1];
    portno = atoi(argv[2]);

    /* socket: create the socket */
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");
    
    //If the server does not respond, eventually timeout
    struct timeval timeout = {.tv_sec = TIMEOUT, .tv_usec = 0};
    if (setsockopt(sockfd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout)) < 0) {
        perror("setsockopt failed");
        // Handle error
    }

    /* gethostbyname: get the server's DNS entry */
    server = gethostbyname(hostname);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host as %s\n", hostname);
        exit(0);
    }

    /* build the server's Internet address */
    bzero((char *) &serveraddr, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
	  (char *)&serveraddr.sin_addr.s_addr, server->h_length);
    serveraddr.sin_port = htons(portno);
    
    //Set up basic info which should remain unchanged during while loop
    printf("---# Welcome User! #---\n");
    serverlen = sizeof(serveraddr);
    int cycleMenu = 1;
    
    //Loop through the menu until user wants to exit
    while(cycleMenu) {
        //Get the user input
        bzero(buf, BUFSIZE);
        printf("Please select a command:\n");
        printf("1) get <filename>\n2) put <filename>\n3) delete <filename>\n4) ls\n5) exit\n\n");
        
        //Read input
        if (fgets(buf, sizeof(buf), stdin) == NULL) {
            printf("Error reading input\n");
            return 1;
        }
        
        //Manage the user input
        struct packetInfo pk = { .sockfd = sockfd, .addrlen = serverlen, .addr = serveraddr};
        cycleMenu = manageRequest(buf, pk);
        
        printf("\n");
    }
    
    return 0;
}
