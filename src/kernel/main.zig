const std = @import("std");
const frame_buffer_config = @import("frame_buffer_config.zig");
const graphics = @import("graphics.zig");
const font = @import("font.zig");
const Console = @import("console.zig").Console;

pub var console: Console = undefined;

pub fn printk(comptime format: []const u8, args: anytype) anyerror!void {
    var buf: [1024]u8 = undefined;
    const text = try std.fmt.bufPrint(&buf, format, args);
    console.putString(text);
}

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

    console = Console.init(&pixel_writer);
    var i: usize = 0;
    while (i < 33) : (i += 1) {
        printk("printk: {d}\n", .{i}) catch unreachable;
    }

    while (true) asm volatile ("hlt");
}
