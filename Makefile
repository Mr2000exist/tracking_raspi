server.o : server.cpp
	gcc -c server.cpp

client.o : client.cpp
	gcc -c client.cpp

server : server.o
	gcc -o server.o

client : client.o
	gcc -o client.o

clean : server client
	rm server.o client.o
