#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>

void error(const char *m){
	perror(m);
	exit(0);
}

int main(void) {

	const char *s_addr = "157.138.7.88";
	const char i_port = 80;
	int s;
	struct sockaddr_in server_addr;
	char *message, server_reply[10000];


	printf("Create socket\n");

	s = socket(AF_INET, SOCK_STREAM, 0);
	 if (s < 0) { error("socket()"); }
					
	memset(&server_addr, 0, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = inet_addr(s_addr);
	server_addr.sin_port = htons(i_port);
	printf("Trying connect\n");

	if (connect(s, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
	     	error("connect()");
	}
												        
	printf("Connect success!\n");

	//Send some data
	message = "GET /?st=1 HTTP/1.1\r\nHost: www.unive.it\r\n\r\n";
	if( send(s , message , strlen(message) , 0) < 0)
	{
		error("Send failed");
	}
	printf("Data Send\n");
						
	//Receive a reply from the server
	if( recv(s, server_reply , 10000 , 0) < 0)
	  {
		error("recv failed");
	}

	printf("Reply received\n");
	printf("%s",server_reply);

	close(s);
	return 0;
}

