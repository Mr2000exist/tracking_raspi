server.o : server.c
	gcc -c server.c

client.o : client.c
	gcc -c client.c

server : server.o
	gcc -o server.o

client : client.o
	gcc -o client.o

clean : server client
	rm server.o client.o
