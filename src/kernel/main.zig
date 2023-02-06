const frame_buffer_config = @import("frame_buffer_config.zig");

const PixelColor = struct {
    r: u8,
    g: u8,
    b: u8,
};

fn WritePixel(config: *frame_buffer_config.FrameBufferConfig, x: usize, y: usize, c: *const PixelColor) i32 {
    const frame_buffer = @ptrCast([*]u8, config.frame_buffer);
    const pixel_position = config.pixels_per_scan_line * y + x;
    switch (config.pixel_format) {
        .kPixelRGBResv8BitPerColor => {
            frame_buffer[4 * pixel_position + 0] = c.r;
            frame_buffer[4 * pixel_position + 1] = c.g;
            frame_buffer[4 * pixel_position + 2] = c.b;
        },
        .kPixelBGRResv8BitPerColor => {
            frame_buffer[4 * pixel_position + 0] = c.b;
            frame_buffer[4 * pixel_position + 1] = c.g;
            frame_buffer[4 * pixel_position + 2] = c.r;
        },
    }
    return 0;
}

export fn KernelMain(config: *frame_buffer_config.FrameBufferConfig) void {
    var x: usize = 0;
    var y: usize = 0;
    while (x < config.horizontal_resolution) : (x += 1) {
        while (y < config.vertical_resolution) : (y += 1) {
            _ = WritePixel(config, x, y, &PixelColor{ .r = 255, .g = 255, .b = 255 });
        } else {
            y = 0;
        }
    }
    x = 0;
    y = 0;
    while (x < 200) : (x += 1) {
        while (y < 200) : (y += 1) {
            _ = WritePixel(config, x, y, &PixelColor{ .r = 0, .g = 255, .b = 0 });
        } else {
            y = 0;
        }
    }

    while (true) asm volatile ("hlt");
}
