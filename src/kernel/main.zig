const frame_buffer_config = @import("frame_buffer_config.zig");

const kFontA = [16]u8{
    0b00000000, //
    0b00011000, //    **
    0b00011000, //    **
    0b00011000, //    **
    0b00011000, //    **
    0b00100100, //   *  *
    0b00100100, //   *  *
    0b00100100, //   *  *
    0b00100100, //   *  *
    0b01111110, //  ******
    0b01000010, //  *    *
    0b01000010, //  *    *
    0b01000010, //  *    *
    0b11100111, // ***  ***
    0b00000000, //
    0b00000000, //
};

const PixelColor = struct {
    r: u8 = 0,
    g: u8 = 0,
    b: u8 = 0,

    pub fn black() PixelColor {
        return PixelColor{};
    }
    pub fn white() PixelColor {
        return PixelColor{ .r = 255, .g = 255, .b = 255 };
    }
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

fn writeAscii(writer: *PixelWriter, x: usize, y: usize, c: u8, color: *const PixelColor) void {
    if (c != 'A') return;
    {
        var dy: usize = 0;
        while (dy < 16) : (dy += 1) {
            var dx: u6 = 0;
            while (dx < 8) : (dx += 1) {
                if ((@as(usize, kFontA[dy]) << dx) & 0x80 > 0) {
                    writer.write(x + dx, y + dy, color);
                }
            }
        }
    }
}

export fn KernelMain(config: *frame_buffer_config.FrameBufferConfig) void {
    var pixel_writer = PixelWriter.create(config);

    {
        var x: usize = 0;
        while (x < config.horizontal_resolution) : (x += 1) {
            var y: usize = 0;
            while (y < config.vertical_resolution) : (y += 1) {
                pixel_writer.write(x, y, &PixelColor.white());
            }
        }
    }
    {
        var x: usize = 0;
        while (x < 200) : (x += 1) {
            var y: usize = 0;
            while (y < 300) : (y += 1) {
                pixel_writer.write(x, y, &PixelColor{ .r = 0, .g = 255, .b = 0 });
            }
        }
    }

    writeAscii(&pixel_writer, 50, 50, 'A', &PixelColor.black());
    writeAscii(&pixel_writer, 58, 50, 'A', &PixelColor.black());

    while (true) asm volatile ("hlt");
}
