SRC = main.c
TARGET=dlopen_check
CC  = gcc

$(TARGET): main.o
	$(CC) -o $@ $^ -ldl
%.c.o:
	$(CC) -c $<
clean:
	rm -f *.o $(TARGET)