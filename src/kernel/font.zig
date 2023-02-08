const graphics = @import("graphics.zig");

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

pub fn writeAscii(writer: *graphics.PixelWriter, x: usize, y: usize, c: u8, color: *const graphics.PixelColor) void {
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
