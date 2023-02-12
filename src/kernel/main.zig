const std = @import("std");
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

    var text: [9]u8 = "ABCDEFG!!".*;
    font.writeString(&pixel_writer, 50, 50, &text, &graphics.PixelColor.black());

    var buf: [10]u8 = undefined;
    const buftext = std.fmt.bufPrint(&buf, "{d}+{d}={d}", .{ 1, 2, 3 }) catch unreachable;
    font.writeString(&pixel_writer, 50, 66, buftext, &graphics.PixelColor.black());

    while (true) asm volatile ("hlt");
}
