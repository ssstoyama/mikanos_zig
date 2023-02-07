const frame_buffer_config = @import("frame_buffer_config.zig");

const PixelColor = struct {
    r: u8,
    g: u8,
    b: u8,
};

const PixelWriter = union(enum) {
    rgb: RGBResv8BitPerColorPixelWriter,
    bgr: BGRResv8BitPerColorPixelWriter,

    pub fn create(config: *frame_buffer_config.FrameBufferConfig) PixelWriter {
        return switch (config.pixel_format) {
            .kPixelRGBResv8BitPerColor => PixelWriter{ .rgb = RGBResv8BitPerColorPixelWriter.init(config) },
            .kPixelBGRResv8BitPerColor => PixelWriter{ .bgr = BGRResv8BitPerColorPixelWriter.init(config) },
        };
    }
    pub fn pixelAt(config: *frame_buffer_config.FrameBufferConfig, x: usize, y: usize) [*]u8 {
        const frame_buffer = @ptrCast([*]u8, config.frame_buffer);
        return @ptrCast([*]u8, &frame_buffer[4 * (config.pixels_per_scan_line * y + x)]);
    }
    pub fn write(self: PixelWriter, x: usize, y: usize, c: *const PixelColor) void {
        switch (self) {
            inline else => |case| case.write(x, y, c),
        }
    }
};

const RGBResv8BitPerColorPixelWriter = struct {
    config: *frame_buffer_config.FrameBufferConfig,

    pub fn init(config: *frame_buffer_config.FrameBufferConfig) RGBResv8BitPerColorPixelWriter {
        return RGBResv8BitPerColorPixelWriter{
            .config = config,
        };
    }
    pub fn write(self: RGBResv8BitPerColorPixelWriter, x: usize, y: usize, c: *const PixelColor) void {
        var p = PixelWriter.pixelAt(self.config, x, y);
        p[0] = c.r;
        p[1] = c.g;
        p[2] = c.b;
    }
};

const BGRResv8BitPerColorPixelWriter = struct {
    config: *frame_buffer_config.FrameBufferConfig,

    pub fn init(config: *frame_buffer_config.FrameBufferConfig) BGRResv8BitPerColorPixelWriter {
        return BGRResv8BitPerColorPixelWriter{
            .config = config,
        };
    }
    pub fn write(self: BGRResv8BitPerColorPixelWriter, x: usize, y: usize, c: *const PixelColor) void {
        var p = PixelWriter.pixelAt(self.config, x, y);
        p[0] = c.b;
        p[1] = c.g;
        p[2] = c.r;
    }
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
    var pixel_writer = PixelWriter.create(config);

    var x: usize = 0;
    var y: usize = 0;
    while (x < config.horizontal_resolution) : (x += 1) {
        while (y < config.vertical_resolution) : (y += 1) {
            pixel_writer.write(x, y, &PixelColor{ .r = 255, .g = 255, .b = 255 });
        } else {
            y = 0;
        }
    }
    x = 0;
    y = 0;
    while (x < 200) : (x += 1) {
        while (y < 300) : (y += 1) {
            pixel_writer.write(x, y, &PixelColor{ .r = 0, .g = 255, .b = 0 });
        } else {
            y = 0;
        }
    }

    while (true) asm volatile ("hlt");
}
