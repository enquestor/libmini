.PHONY: clean pack

all: libmini.so start.o

libmini64.o: libmini64.asm
	yasm -f elf64 -DYASM -D__x86_64__ -DPIC $< -o $@

libmini.o: libmini.c
	gcc -c -g -Wall -fno-stack-protector -fPIC -nostdlib $<

libmini.so: libmini.o libmini64.o
	ld -shared -o $@ $^

start.o: start.asm
	yasm -f elf64 -DYASM -D__x86_64__ -DPIC $< -o $@

clean:
	rm *.o *.so

pack: clean
	zip -r $(ZIPNAME) . -x ".git*" -x ".DS_Store"
