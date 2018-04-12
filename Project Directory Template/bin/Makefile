#============================================================================
# Name        : Makefile
# Author      : Antonius Torode
# Copyright   : This file can be used under the conditions of Antonius' 
#				 General Purpose License (AGPL).
# Description : Makefile Template
#============================================================================

# the compiler to use.
CC=g++

# options I'll pass to the compiler.
CFLAGS=-c -Wall -std=c++14

# make all - for compiling on Windows
all: HelloWorld

# make the object files on a Windows machine
HelloWorld: main.o program.o
	$(CC) main.o program.o -o HelloWorld

# make the object files on a Linux machine.
linux: main.o program.o 
	$(CC) main.o program.o -o HelloWorld
	
# make the object files on a Linux machine.
release: main.o program.o
	$(CC) main.o program.o -o HelloWorld
	rm -fv ../release/HelloWorld.exe
	cp -rfv HelloWorld.exe ../release/
	rm -fv ../release/manual.pdf
	cp -fv ../doc/manual/manual.pdf ../release/manual.pdf
	tar -czvf ../release.tar.gz ../release/*

main.o: main.cpp program.h
	$(CC) $(CFLAGS) main.cpp

program.o: program.cpp program.h
	$(CC) $(CFLAGS) program.cpp

#make clean - removes object files.
clean:
	rm -fv *o HelloWorld.*

#make obj_clean - For removing only the object files but keeping the executable.
cleanup:
	rm -fv *o HelloWorld.exe.*
