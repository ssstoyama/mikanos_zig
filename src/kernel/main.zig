const frame_buffer_config = @import("frame_buffer_config.zig");
const graphics = @import("graphics.zig");
const font = @import("font.zig");

export fn KernelMain(config: *frame_buffer_config.FrameBufferConfig) void {
    var pixel_writer = graphics.PixelWriter.create(config);

    {
        var x: usize = 0;
        while (x < config.horizontal_resolution) : (x += 1) {
            var y: usize = 0;
            while (y < config.vertical_resolution) : (y += 1) {
                pixel_writer.write(x, y, &graphics.PixelColor.white());
            }
        }
    }
    {
        var x: usize = 0;
        while (x < 200) : (x += 1) {
            var y: usize = 0;
            while (y < 300) : (y += 1) {
                pixel_writer.write(x, y, &graphics.PixelColor{ .r = 200, .b = 200 });
            }
        }
    }

    font.writeAscii(&pixel_writer, 50, 50, 'A', &graphics.PixelColor.black());
    font.writeAscii(&pixel_writer, 58, 50, 'A', &graphics.PixelColor.black());

    while (true) asm volatile ("hlt");
}
