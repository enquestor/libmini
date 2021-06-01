.PHONY: clean

all: alarm1 alarm2 alarm3 jmp1

alarm1: alarm1.c
	gcc -c -g -Wall -fno-stack-protector -nostdlib -I. -I.. -DUSEMINI $<
	ld -m elf_x86_64 --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ alarm1.o ../start.o -L. -L.. -lmini
	rm alarm1.o

alarm2: alarm2.c
	gcc -c -g -Wall -fno-stack-protector -nostdlib -I. -I.. -DUSEMINI $<
	ld -m elf_x86_64 --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ alarm2.o ../start.o -L. -L.. -lmini
	rm alarm2.o

alarm3: alarm3.c
	gcc -c -g -Wall -fno-stack-protector -nostdlib -I. -I.. -DUSEMINI $<
	ld -m elf_x86_64 --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ alarm3.o ../start.o -L. -L.. -lmini
	rm alarm3.o

jmp1: jmp1.c
	gcc -c -g -Wall -fno-stack-protector -nostdlib -I. -I.. -DUSEMINI $<
	ld -m elf_x86_64 --dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ jmp1.o ../start.o -L. -L.. -lmini
	rm jmp1.o

clean:
	rm -f alarm1 alarm2 alarm3 jmp1
