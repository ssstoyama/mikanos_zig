export fn KernelMain(frame_buffer_base: u64, frame_buffer_size: u64) void {
    var frame_buffer = @intToPtr([*]u8, frame_buffer_base);
    var i: usize = 0;
    while (i < frame_buffer_size) : (i += 1) {
        frame_buffer[i] = @intCast(u8, i % 256);
    }

    while (true) asm volatile ("hlt");
}
