ASM = nasm
LD = ld
FLAGS = -f elf64

SRC = src/main.asm
OBJ = bin/main.o
OUT = bin/main

all: build

build:
	@mkdir -p bin
	$(ASM) $(FLAGS) $(SRC) -o $(OBJ)
	$(LD) $(OBJ) -o $(OUT)

run: build
	@./$(OUT)

clean:
	@rm -rf bin/*.o bin/main
