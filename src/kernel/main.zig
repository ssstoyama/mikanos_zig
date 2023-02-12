const std = @import("std");
const frame_buffer_config = @import("frame_buffer_config.zig");
const graphics = @import("graphics.zig");
const font = @import("font.zig");
const console = @import("console.zig");

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

    var _console: console.Console = console.Console.init(&pixel_writer);
    var buf: [128]u8 = undefined;
    var i: usize = 0;
    while (i < 30) : (i += 1) {
        const line = std.fmt.bufPrint(&buf, "line {d}\n", .{i}) catch unreachable;
        _console.putString(line);
    }

    while (true) asm volatile ("hlt");
}
