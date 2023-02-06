pub const PixelFormat = enum(u8) {
    kPixelRGBResv8BitPerColor = 1,
    kPixelBGRResv8BitPerColor = 2,
};

pub const FrameBufferConfig = struct {
    frame_buffer: *u8,
    pixels_per_scan_line: u32,
    horizontal_resolution: u32,
    vertical_resolution: u32,
    pixel_format: PixelFormat,
};
