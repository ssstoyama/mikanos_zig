const std = @import("std");
const graphics = @import("graphics.zig");
const font = @import("font.zig");

const rows: usize = 25;
const cols: usize = 80;
pub const Console = struct {
    writer: *graphics.PixelWriter,
    fg_color: graphics.PixelColor = graphics.PixelColor.black(),
    bg_color: graphics.PixelColor = graphics.PixelColor.white(),
    cursor_row: usize = 0,
    cursor_col: usize = 0,
    buf: [rows][cols]u8 = [_][cols]u8{[_]u8{0} ** cols} ** rows,

    pub fn init(writer: *graphics.PixelWriter) Console {
        return Console{
            .writer = writer,
        };
    }

    pub fn putString(self: *Console, s: []u8) void {
        for (s) |c| {
            if (c == '\n') {
                self.newLine();
            } else if (self.cursor_col < cols - 1) {
                font.writeAscii(self.writer, 8 * self.cursor_col, 16 * self.cursor_row, c, &self.fg_color);
                self.buf[self.cursor_row][self.cursor_col] = c;
                self.cursor_col += 1;
            }
        }
    }

    fn newLine(self: *Console) void {
        self.cursor_col = 0;
        if (self.cursor_row < rows - 1) {
            self.cursor_row += 1;
            return;
        }
        // コンソールクリア
        {
            var y: usize = 0;
            while (y < 16 * rows) : (y += 1) {
                var x: usize = 0;
                while (x < 8 * cols) : (x += 1) {
                    self.writer.write(x, y, &self.bg_color);
                }
            }
        }
        // コンソールを 1 行上にずらす
        {
            var row: usize = 0;
            while (row < rows - 1) : (row += 1) {
                std.mem.copy(u8, &self.buf[row], &self.buf[row + 1]);
                font.writeString(self.writer, 0, 16 * row, &self.buf[row], &self.fg_color);
            }
            // 最下行クリア
            self.buf[rows - 1] = [_]u8{0} ** cols;
        }
    }
};
