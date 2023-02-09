TOOL_DIR = ~/osbook/devenv

.PHONY: run
run: build
	$(TOOL_DIR)/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi src/kernel/kernel.elf

.PHONY: build
build:
	zig build
	mv src/kernel/kernel src/kernel/kernel.elf
	cd $(TOOL_DIR) && build

.PHONY: clean
clean:
	make -C src/kernel clean
	rm -rf Build/*
	rm -rf zig-cache
	rm -rf zig-out
