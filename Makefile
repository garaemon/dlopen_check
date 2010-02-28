SRC = main.c
TARGET=dlopen_check
CC  = gcc

$(TARGET): main.o
	$(CC) -o $@ $^
%.c.o:
	$(CC) -c $<
