#!/bin/bash
CC=g++
CFLAGS=-c -w -std=c++11 -m64 -pipe -O2 -Wall -W
SOURCES=clusterer.cpp main.cpp pdb_parser.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE= PCACluster

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm $(OBJECTS)

