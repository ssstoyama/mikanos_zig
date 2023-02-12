TOOL_DIR = ~/osbook/devenv
KERNEL_DIR = ./src/kernel

.PHONY: run
run: build
	$(TOOL_DIR)/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi src/kernel/kernel.elf

.PHONY: debug
debug: build
	QEMU_OPTS="-gdb tcp::12345 -S" && $(TOOL_DIR)/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi src/kernel/kernel.elf

.PHONY: build
build:
	zig build
	cd $(TOOL_DIR) && build

.PHONY: clean
clean:
	make -C src/kernel clean
	rm -f disk.img
	rm -rf Build/*
	rm -rf zig-cache
	rm -rf zig-out
