CC          =	gcc
# Flags that are sent to the compiler

CFLAGS      =	-Wall -ansi -pedantic -g

#Directories where the compiler can find things
INCLUDES    = -Iinclude

all : main

main: 
	gcc $(CFLAGS) src/sort.c src/main.c -o bin/mainrunnable $(INCLUDES)

clean:
	@ rm *.o
	@ rm bin/*

run:
	cd bin; ./mainrunnable
