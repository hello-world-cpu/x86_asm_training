training: training.o
	ld -m elf_i386 training.o -o training
training.o: training.asm
	nasm -f elf32 training.asm -o training.o
clean:
	rm *.o training
gcc:
	nasm -f elf32 training.asm -o training.o
	gcc -m32 training.o -o training
