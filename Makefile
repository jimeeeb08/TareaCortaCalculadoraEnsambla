CC = gcc
ASM = nasm
CFLAGS = -Wall -Wextra -O2 -std=c11 -Iinclude
ASFLAGS = -f elf64

all: calc64

calc64: src/main.o src/operaciones.o
	$(CC) src/main.o src/operaciones.o -o calc64

src/main.o: src/main.c include/operaciones.h
	$(CC) $(CFLAGS) -c src/main.c -o src/main.o

src/operaciones.o: src/operaciones.asm
	$(ASM) $(ASFLAGS) src/operaciones.asm -o src/operaciones.o

clean:
	rm -f src/*.o calc64
