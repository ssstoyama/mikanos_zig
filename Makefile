TOOL_DIR = ~/osbook/devenv

.PHONY: run
run:
	$(TOOL_DIR)/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi src/kernel/kernel.elf

.PHONY: build
build:
	make -C src/kernel
	cd $(TOOL_DIR) && build

.PHONY: clean
clean:
	make -C src/kernel clean
	rm -rf Build/*
