# All Targets
all: magic-squares

# Tool invocations
magic-squares: magic-squares.o 
	gcc -g -m64 -o magic-squares magic-squares.o

magic-squares.o: magic-squares.x86-64 
	nasm -g -f elf64 -l magic-squares.o magic-squares.x86-64


#tell make that "clean" is not a file name!
.PHONY: clean

#Clean the build directory
clean: 
	rm -f *.o magic-squares
