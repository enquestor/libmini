.PHONY: clean pack

ZIPNAME = 0713407_hw3

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
	rm -f *.o *.so

pack: clean
	mkdir ~/$(ZIPNAME)
	cp -r * ~/$(ZIPNAME)
	mv ~/$(ZIPNAME) .
	zip -r $(ZIPNAME) $(ZIPNAME) -x ".git*" -x ".DS_Store"
	rm -rf $(ZIPNAME)
