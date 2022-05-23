CC = g++
CFLAGS = -Wall -g
all: main
main: mqtt.o main.o
	$(CC) $(CFLAGS) -o main main.o mqtt.o 
main.o: mqtt.h main.cpp 
	$(CC) $(CFLAGS) -c main.cpp
mqtt.o: mosquittopp.h mqtt.h
	$(CC) $(CFLAGS) -c mqtt.cpp
clean:
	rm main.o mqtt.o
