#run exe "./myexe"

#variables
CC = g++
CFLAGS = -Wall

#target exe
all: main.o myfunc.o
	$(CC) $(CFLAGS) -o myexe main.o myfunc.o
	
#rebuild if either of the files below change		
main.o: main.cpp myfunc.h
	$(CC) $(CFLAGS) -c main.cpp
	
myfunc.o: myfunc.cpp myfunc.h
	$(CC) $(CFLAGS) -c myfunc.cpp
	
#type 'make clean' to remove following	
clean:
	rm -f *.o myexe
	
