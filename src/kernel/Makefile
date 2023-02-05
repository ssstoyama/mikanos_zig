TARGET = kernel.elf
OBJS = main.o

CFLAGS   += -O2 -Wall -g --target=x86_64-elf -ffreestanding -mno-red-zone
ZFLAGS += -O ReleaseSafe -target x86_64-freestanding -mno-red-zone -ofmt=elf --library c
LDFLAGS  += --entry KernelMain -z norelro --image-base 0x100000 --static

.PHONY: all
all: $(TARGET)

kernel.elf: $(OBJS) Makefile
	ld.lld $(LDFLAGS) -o kernel.elf $(OBJS)

%.o: %.zig
	zig build-obj $(ZFLAGS) $<

.PHONY: clean
clean:
	rm -f kernel.elf
	rm -rf *.o
