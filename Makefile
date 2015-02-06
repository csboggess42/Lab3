AutomatedMakefile = am
CC = g++

FILES = Password.o PasswordDriver.o
EXECUTABLE = fallout.exe

PROJECT_PATH = $(PROJECT_DIR)

INC_DIRS = -I$(PROJECT_PATH)/CSC2110/
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110/
LIBS = libCSC2110.a

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: Project

Project: 		$(FILES)
			$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)

Password.o:		Password.cpp Password.h
			$(COMPILE) Password.cpp

PasswordDriver.o:	PasswordDriver.cpp Password.h
			$(COMPILE) PasswordDriver.cpp



