/* 
 * udpserver.c - A simple UDP echo server 
 * usage: udpserver <port>
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <dirent.h>

#define BUFSIZE 1024
#define CMDLEN 6
#define TIMEOUT 3

//Struct containing info on how/where to send a packet
struct packetInfo {
  int sockfd;
  int clientlen;
  struct sockaddr_in clientaddr;
};

/*
 * error - wrapper for perror
 */
void error(char *msg) {
  perror(msg);
  exit(1);
}

/*
* listFiles - sends a list of all files in the current directory to the client
* input: struct packetInfo pk to pass to packetSend() call
* output: return 0 upon completion
*/
int listFiles(struct packetInfo pk) {
    DIR *dr;
    struct dirent *entry;
    
    dr = opendir("."); 
    if (dr) {
        while ((entry = readdir(dr)) != NULL) {
            if(entry->d_name[0] != '.') {
                packetSend(entry->d_name, pk);
            }
        }
        packetSend("END_OF_TRANSMISSION\0", pk);
        
      closedir(dr);
    }
    
    return 0;
}

int getFile(char* filename, struct packetInfo pk) {
    char buf[BUFSIZE];
    FILE* fileptr;
 
    // Opening file in reading mode
    fileptr = fopen(filename, "r");
 
    if (fileptr == NULL) {
        printf("File can't be opened \n");
        //packetSend("File can't be opened", pk);
    }
    else {
        while(fgets(buf, BUFSIZE, fileptr) != NULL) {
            packetSend(buf, pk);
            bzero(buf, BUFSIZE);
        }
        // Closing the file
        fclose(fileptr);
    }
    
    return 0;
}

/*
* Create a file based on what client sends
*/
int putFile(char* filename, char* recvBuf, struct packetInfo pk) { 
    FILE *fp = fopen(filename, "w");

    if(fp != NULL) {
        int n;
        int sockfd = pk.sockfd;
        int clientlen = pk.clientlen;
        struct sockaddr_in clientaddr = pk.clientaddr;
        int receiving = 0;
        
        //Send initial acknowledge that put command has been received
        n = sendto(sockfd, "ACK_PUT\0", strlen("ACK_PUT\0"), 0, &clientaddr, clientlen);
        if (n < 0)
            error("ERROR in sendto\n");
        
        do {
            //Take in file data
            bzero(recvBuf, BUFSIZE);
            n = recvfrom(sockfd, recvBuf, BUFSIZE, 0, (struct sockaddr *) &clientaddr, &clientlen);
            if (n < 0) {
                printf("ERROR in recvfrom while storing file...\n");
                receiving++;
            }
            //If client indicates the end of file transfer echo the end of transmission message
            else if(strcmp("END_OF_TRANSMISSION\0", recvBuf) == 0) {
                n = sendto(sockfd, "END_OF_TRANSMISSION\0", strlen("END_OF_TRANSMISSION\0"), 0, &clientaddr, clientlen);
                if (n < 0)
                    error("ERROR in sendto\n");
            }
            else {
                //Reset timeout attempts
                receiving = 0;
                //Store data in the specificed file
                fwrite(recvBuf, 1, sizeof(recvBuf), fp);
                //Send acknowledgement of file data being stored
                n = sendto(sockfd, "ACK_PUT\0", strlen("ACK_PUT\0"), 0, &clientaddr, clientlen);
                if (n < 0)
                    error("ERROR in sendto\n");
            }
        } while(strcmp(recvBuf, "END_OF_TRANSMISSION\0") != 0 && receiving < TIMEOUT);

        //If server does not respond to put request after TIMEOUT attempts then return to menu
        if(receiving == TIMEOUT) {
            printf("Lost connection to client!\n");
        }
            
        fclose(fp);
    }
    else {
        printf("File can't be stored \n");
        //packetSend("File can't be stored", pk);
    }   
    
    return 0;
}

/*
* Delete a file based on what client sends
*/
int deleteFile(char* filename, struct packetInfo pk) {
    printf("Removing file: %s\n", filename);
    
    int temp = remove(filename);
    if(temp == 0) {
        packetSend("SUCC_DEL", pk);
    }
    else {
        packetSend("FAIL_DEL", pk);
    }
    
    return 0;
}


/* 
* packetSend - sends a "packet" of data to the client
* input: char* buf of max length BUFSIZE; struct packetInfo pk containing info on where to send
* output: int return 0 on completion
*/
int packetSend(char* buf, struct packetInfo pk) {
    int n;
    int sockfd = pk.sockfd;
    int clientlen = pk.clientlen;
    //struct sockaddr_in serveraddr = pk->serveraddr;
    struct sockaddr_in clientaddr = pk.clientaddr;

    printf("Packet: %s w/ len %d\n", buf, strlen(buf));
    
    /* 
     * sendto: echo the input back to the client 
     */
    n = sendto(sockfd, buf, strlen(buf), 0, (struct sockaddr *) &clientaddr, clientlen);
    if (n < 0)
      error("ERROR in sendto");
    
    return 0;
}

//Manages the client request
int manageRequest(char* buf, struct packetInfo pk) {
    //Remove newline character if present
    size_t lenbuf = strlen(buf);
    if (lenbuf > 0) {
        //Grab the command
        char cmdInput[CMDLEN];
        int i = 0;
        while(buf[i] != ' ' && buf != '\0' && i < lenbuf) {
            cmdInput[i] = buf[i];
            i++;
        }
        cmdInput[i] = '\0';
        printf("Cmd: %s\n", cmdInput);
        
        //Grab the file
        char filename[lenbuf - strlen(cmdInput)];
        i++;
        int j = 0;
        while(buf[i] != ' ' && buf != '\0' && i < lenbuf) {
            filename[j] = buf[i];
            j++;
            i++;
        }
        filename[j] = '\0';
        printf("Filename: %s\n", filename);
        
        //Compare input to find proper response
        if(strcmp(cmdInput, "exit") == 0) {
            packetSend("END_OF_TRANSMISSION\0", pk);
        }
        else if(strcmp(cmdInput, "ls") == 0) {
            listFiles(pk);
        }
        else if(strcmp(cmdInput, "put") == 0) {
            putFile(filename, buf, pk);
        }
        else if(strlen(filename) > 0 && access(filename, F_OK) != -1) {
            if (strcmp(cmdInput, "get") == 0) {
                getFile(filename, pk);
            }
            else if(strcmp(cmdInput, "delete") == 0) {
                deleteFile(filename, pk);   
            }
        }
        else {
            printf("Failed to meet request!\n");
        }                
    }
    
    return 0;
}

int main(int argc, char **argv) {
  int sockfd; /* socket */
  int portno; /* port to listen on */
  struct hostent *hostp; /* client host info */
  char *hostaddrp; /* dotted decimal host addr string */
  int clientlen; /* byte size of client's address */
  struct sockaddr_in serveraddr; /* server's addr */
  struct sockaddr_in clientaddr; /* client addr */
  char buf[BUFSIZE]; /* message buf */
  int optval; /* flag value for setsockopt */
  int n; /* message byte size */

  /* 
   * check command line arguments 
   */
  if (argc != 2) {
    fprintf(stderr, "usage: %s <port>\n", argv[0]);
    exit(1);
  }
  portno = atoi(argv[1]);

  /* 
   * socket: create the parent socket 
   */
  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0) 
    error("ERROR opening socket");

  /* setsockopt: Handy debugging trick that lets 
   * us rerun the server immediately after we kill it; 
   * otherwise we have to wait about 20 secs. 
   * Eliminates "ERROR on binding: Address already in use" error. 
   */
  optval = 1;
  setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, 
	     (const void *)&optval , sizeof(int));

  /*
   * build the server's Internet address
   */
  bzero((char *) &serveraddr, sizeof(serveraddr));
  serveraddr.sin_family = AF_INET;
  serveraddr.sin_addr.s_addr = htonl(INADDR_ANY);
  serveraddr.sin_port = htons((unsigned short)portno);

  /* 
   * bind: associate the parent socket with a port 
   */
  if (bind(sockfd, (struct sockaddr *) &serveraddr, 
	   sizeof(serveraddr)) < 0) 
    error("ERROR on binding\n");

  /* 
   * main loop: wait for a datagram, then echo it
   */
  clientlen = sizeof(clientaddr);
  printf("\n---##Server Online##---\n");
  while (1) {
    /*
     * recvfrom: receive a UDP datagram from a client
     */
    bzero(buf, BUFSIZE);
    n = recvfrom(sockfd, buf, BUFSIZE, 0,
		 (struct sockaddr *) &clientaddr, &clientlen);
    if (n < 0)
      error("ERROR in recvfrom");
      
    /* 
     * gethostbyaddr: determine who sent the datagram
    */
    hostp = gethostbyaddr((const char *)&clientaddr.sin_addr.s_addr, 
              sizeof(clientaddr.sin_addr.s_addr), AF_INET);
    if (hostp == NULL)
      error("ERROR on gethostbyaddr");
    hostaddrp = inet_ntoa(clientaddr.sin_addr);
    if (hostaddrp == NULL)
      error("ERROR on inet_ntoa\n");
    
    printf("server received datagram from %s (%s)\n", hostp->h_name, hostaddrp);
    printf("server received %d/%d bytes: %s\n", strlen(buf), n, buf);
      
    struct packetInfo pk = { .sockfd = sockfd, .clientlen = clientlen, .clientaddr = clientaddr};
    
    manageRequest(buf, pk);
  }
}
