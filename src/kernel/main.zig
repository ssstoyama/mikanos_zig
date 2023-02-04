export fn KernelMain() void {
    while (true) asm volatile ("hlt");
}
