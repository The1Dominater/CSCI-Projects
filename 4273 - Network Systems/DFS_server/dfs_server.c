#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <ctype.h>

#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define BUFSIZE 4096
#define TIMEOUT 3

//Struct containing info on how/where to send a packet
struct packetInfo {
  int sockfd;
  int transmissionLen;
};

/* 
* sendResponse - sends a "packet" of response data to the client
* input: char* buf of max length BUFSIZE; struct httpReqInfo pk containing info on where to send
* output: return 0 upon completion
*/
int sendResponse(char* buf, struct packetInfo pk) {
    int sockcd = pk.sockfd;
    int transmissionLen = pk.transmissionLen;

    /* 
     * sendto: provide an HTTP response
    */
    send(sockcd, buf, transmissionLen, 0);

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

int listFiles(struct packetInfo pk) {
    printf("Listing files...\n");

    // Open the current director and list stored files
    DIR *dr;
    dr = opendir("."); 

    if (dr) {
        struct dirent *entry;

        while ((entry = readdir(dr)) != NULL) {
            if(entry->d_name[0] != '.') {
                sendResponse(entry->d_name, pk);
            }
        }
        
      closedir(dr);
    }

    return 0;
}

int manageRequest(char *buf, struct packetInfo pk) {
    char command[BUFSIZE] = "";
    char filename[BUFSIZE - 4];

    //Remove newline character if present
    int lenbuf = strlen(buf);
    if (lenbuf > 0) {
        //Grab the command
        int i = 0;
        while(buf[i] != ' ' && buf[i] != '\0' && i < lenbuf) {
            command[i] = buf[i];
            i++;
        }
        command[i] = '\0';
        printf("Command: %s\n", command);
        
        //Grab the filename
        i++;
        int j = 0;
        while(buf[i] != ' ' && buf[i] != '\0' && i < lenbuf) {
            filename[j] = buf[i];
            j++;
            i++;
        }
        filename[j] = '\0';
        printf("Filename: %s\n", filename);
    }


    if(strcmp(command, "get") == 0) {
        getFile(filename);
    }
    else if(strcmp(command, "put") == 0){
        putFile(filename);
    }
    else if(strcmp(command, "list") == 0) {
        listFiles(pk);
    }
    else {
        char errormsg[] = "Please use a valid command!\n\0";
        printf("%s", errormsg);
        pk.transmissionLen = strlen(errormsg);
        sendResponse(errormsg, pk);
    }

    return 0;
}

int main(int argc, char **argv) {
    int listenfd; /* parent socket */
    int connfd; /* child socket */
    int n; /* message byte size */
    pid_t childpid;
    socklen_t clientlen;
    char buf[BUFSIZE]; /* message buf */
    struct sockaddr_in serveraddr; /* server's addr */
    struct sockaddr_in clientaddr; /* client addr */

    //Addition variables I added for helping
    int portno; /* port to listen on */
    char *hostaddrp; /* dotted decimal host addr string */
    int optval; /* flag value for setsockopt */

    /* 
    * check command line arguments 
    */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }
    portno = atoi(argv[1]);

    //Create a socket for the soclet
    //If sockfd<0 there was an error in the creation of the socket
    if ((listenfd = socket (AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("Problem in creating the socket");
        exit(2);
    }

    /* setsockopt: Handy debugging trick that lets 
    * us rerun the server immediately after we kill it; 
    * otherwise we have to wait about 20 secs. 
    * Eliminates "ERROR on binding: Address already in use" error. 
    */
    optval = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (const void *)&optval , sizeof(int));

    /*
    * build the server's Internet address
    */
    serveraddr.sin_family = AF_INET;
    serveraddr.sin_addr.s_addr = htonl(INADDR_ANY);
    serveraddr.sin_port = htons((unsigned short)portno);

    /* 
    * bind: associate the parent socket with a port 
    */
    if (bind(listenfd, (struct sockaddr *) &serveraddr, sizeof(serveraddr)) < 0) {
        perror("ERROR on binding\n");
        exit(2);
    }
    
    //Listen for incoming connections from clients
    //listen(listenfd, LISTENQ);

    //Indicate server is up and running in the console
    printf("\n---##DFS Server Running on Port:%d ##---\n", portno);

    /* 
    * main loop: wait for a request, then respond to it
    */ 
    while (1) {
        clientlen = sizeof(clientaddr);

        //accept connection
        connfd = accept(listenfd, (struct sockaddr *) &clientaddr, &clientlen);
  
        /* 
        * gethostbyaddr: determine who sent the datagram
        */
        hostaddrp = inet_ntoa(clientaddr.sin_addr);
        if (hostaddrp == NULL)
            perror("ERROR on inet_ntoa\n");
        
        //printf("Server received datagram from (%s)\n", hostaddrp);

        //Handle incoming request
        while((n = recv(connfd, buf, BUFSIZE, 0)) > 0) {
            //Echo info
            printf("String received from client: %s", buf);

            //Updated Code
            struct packetInfo pk = { .sockfd = connfd,
                                    .transmissionLen = BUFSIZE};
            manageRequest(buf, pk);

            //Clear the buffer for next message
            bzero(buf, BUFSIZE);
        }
         
        //Close child sockect when finished
        close(connfd);
    }

    return 0;
}