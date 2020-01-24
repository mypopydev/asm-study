#makefile for alive.asm
alive: alive.o
	gcc -o alive alive.o -no-pie

hello4: hello4.o
	gcc -o hello4 hello4.o -no-pie

alive.o: alive.asm
	nasm -f elf64 -g -F dwarf alive.asm -l alive.lst

hello4.o: hello4.asm
	nasm -f elf64 -g -F dwarf hello4.asm -l hello4.lst

clean:
	rm -rf alive.o alive.lst alive
	rm -rf hello4.o hello4.lst hello4 
