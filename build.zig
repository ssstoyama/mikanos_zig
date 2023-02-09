const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{
        .default_target = .{
            .cpu_arch = std.Target.Cpu.Arch.x86_64,
            .os_tag = std.Target.Os.Tag.freestanding,
            .abi = std.Target.Abi.musl,
            .ofmt = std.Target.ObjectFormat.elf,
        },
    });
    const optimize = b.standardOptimizeOption(.{
        .preferred_optimize_mode = std.builtin.Mode.ReleaseSafe,
    });

    const kernel = b.addExecutable(.{
        .name = "kernel.elf",
        .root_source_file = .{ .path = "src/kernel/main.zig" },
        .target = target,
        .optimize = optimize,
        .linkage = .static,
    });
    kernel.addObjectFile("src/kernel/hankaku.o");

    kernel.setOutputDir("src/kernel");
    kernel.image_base = 0x100000;
    kernel.entry_symbol_name = "KernelMain";
    kernel.link_z_relro = false;

    kernel.install();
}
