TARGET = kernel.elf
OBJS = main.o hankaku.o

CFLAGS   += -O2 -Wall -g --target=x86_64-elf -ffreestanding -mno-red-zone
ZFLAGS += -O ReleaseSafe -target x86_64-freestanding -mno-red-zone -ofmt=elf --library c
LDFLAGS  += --entry KernelMain -z norelro --image-base 0x100000 --static

.PHONY: all
all: $(TARGET)

kernel.elf: $(OBJS) Makefile
	ld.lld $(LDFLAGS) -o kernel.elf $(OBJS)

%.o: %.zig Makefile
	zig build-obj $(ZFLAGS) $<

hankaku.bin: hankaku.txt
	../../tools/makefont.py -o $@ $<

hankaku.o: hankaku.bin
	objcopy -I binary -O elf64-x86-64 -B i386:x86-64 $< $@

.PHONY: clean
clean:
	rm -f kernel.elf
	rm -rf *.o
	rm -rf *.bin
