
src/kernel/kernel.elf:     file format elf64-x86-64


Disassembly of section .text:

0000000000101cf0 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet>:
            };

            pub fn feature_set_fns(comptime F: type) type {
                return struct {
                    /// Populates only the feature bits specified.
                    pub fn featureSet(features: []const F) Set {
  101cf0:	55                   	push   %rbp
  101cf1:	48 89 e5             	mov    %rsp,%rbp
  101cf4:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  101cfb:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  101cff:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
  101d03:	48 89 d0             	mov    %rdx,%rax
  101d06:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  101d0a:	48 89 f0             	mov    %rsi,%rax
  101d0d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  101d11:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
  101d15:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
                        var x = Set.empty;
  101d19:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  101d1d:	48 be 80 01 10 00 00 	movabs $0x100180,%rsi
  101d24:	00 00 00 
  101d27:	ba 28 00 00 00       	mov    $0x28,%edx
  101d2c:	e8 df 50 00 00       	callq  106e10 <memcpy>
                        for (features) |feature| {
  101d31:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  101d38:	00 
  101d39:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  101d3d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  101d41:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  101d45:	48 39 c8             	cmp    %rcx,%rax
  101d48:	73 0f                	jae    101d59 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0x69>
  101d4a:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  101d4e:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  101d52:	48 39 c8             	cmp    %rcx,%rax
  101d55:	72 04                	jb     101d5b <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0x6b>
  101d57:	eb 04                	jmp    101d5d <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0x6d>
                            x.addFeature(@enumToInt(feature));
  101d59:	eb 75                	jmp    101dd0 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0xe0>
                        for (features) |feature| {
  101d5b:	eb 0d                	jmp    101d6a <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0x7a>
  101d5d:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  101d61:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  101d65:	e8 86 00 00 00       	callq  101df0 <builtin.panicOutOfBounds>
  101d6a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  101d6e:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  101d72:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
  101d76:	88 c1                	mov    %al,%cl
  101d78:	88 4d ef             	mov    %cl,-0x11(%rbp)
                            x.addFeature(@enumToInt(feature));
  101d7b:	66 89 c6             	mov    %ax,%si
  101d7e:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  101d82:	e8 a9 00 00 00       	callq  101e30 <target.Target.Cpu.Feature.Set.addFeature>
  101d87:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  101d8b:	48 ff c0             	inc    %rax
  101d8e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  101d92:	0f 94 45 f8          	sete   -0x8(%rbp)
  101d96:	8a 45 f8             	mov    -0x8(%rbp),%al
  101d99:	84 c0                	test   %al,%al
  101d9b:	75 04                	jne    101da1 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0xb1>
  101d9d:	eb 00                	jmp    101d9f <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0xaf>
  101d9f:	eb 22                	jmp    101dc3 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0xd3>
  101da1:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  101da8:	00 00 00 
  101dab:	be 10 00 00 00       	mov    $0x10,%esi
  101db0:	31 c0                	xor    %eax,%eax
  101db2:	89 c2                	mov    %eax,%edx
  101db4:	48 b9 70 07 10 00 00 	movabs $0x100770,%rcx
  101dbb:	00 00 00 
  101dbe:	e8 4d 01 00 00       	callq  101f10 <builtin.default_panic>
  101dc3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  101dc7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  101dcb:	e9 69 ff ff ff       	jmpq   101d39 <target.Target.Cpu.Feature.feature_set_fns(target.x86.Feature).featureSet+0x49>
  101dd0:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
                        }
                        return x;
  101dd4:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
  101dd8:	ba 28 00 00 00       	mov    $0x28,%edx
  101ddd:	e8 2e 50 00 00       	callq  106e10 <memcpy>
  101de2:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  101de6:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  101ded:	5d                   	pop    %rbp
  101dee:	c3                   	retq   
  101def:	90                   	nop

0000000000101df0 <builtin.panicOutOfBounds>:
pub fn panicUnwrapError(st: ?*StackTrace, err: anyerror) noreturn {
    @setCold(true);
    std.debug.panicExtra(st, @returnAddress(), "attempt to unwrap error: {s}", .{@errorName(err)});
}

pub fn panicOutOfBounds(index: usize, len: usize) noreturn {
  101df0:	55                   	push   %rbp
  101df1:	48 89 e5             	mov    %rsp,%rbp
  101df4:	48 83 ec 30          	sub    $0x30,%rsp
  101df8:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  101dfc:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    @setCold(true);
    std.debug.panicExtra(null, @returnAddress(), "index out of bounds: index {d}, len {d}", .{ index, len });
  101e00:	48 8b 45 08          	mov    0x8(%rbp),%rax
  101e04:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  101e08:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  101e0c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  101e10:	c6 45 f8 01          	movb   $0x1,-0x8(%rbp)
  101e14:	31 c0                	xor    %eax,%eax
  101e16:	89 c7                	mov    %eax,%edi
  101e18:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  101e1c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  101e20:	e8 bb 08 00 00       	callq  1026e0 <debug.panicExtra__anon_1064>
  101e25:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  101e2c:	00 00 00 
  101e2f:	90                   	nop

0000000000101e30 <target.Target.Cpu.Feature.Set.addFeature>:
                pub fn addFeature(set: *Set, arch_feature_index: Index) void {
  101e30:	55                   	push   %rbp
  101e31:	48 89 e5             	mov    %rsp,%rbp
  101e34:	48 83 ec 40          	sub    $0x40,%rsp
  101e38:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  101e3c:	66 89 f1             	mov    %si,%cx
  101e3f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  101e43:	66 89 c8             	mov    %cx,%ax
  101e46:	89 c1                	mov    %eax,%ecx
  101e48:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
  101e4e:	66 89 4d f2          	mov    %cx,-0xe(%rbp)
                    const usize_index = arch_feature_index / @bitSizeOf(usize);
  101e52:	89 c1                	mov    %eax,%ecx
  101e54:	c1 e9 06             	shr    $0x6,%ecx
  101e57:	83 e1 07             	and    $0x7,%ecx
  101e5a:	66 89 4d e4          	mov    %cx,-0x1c(%rbp)
  101e5e:	66 89 4d f4          	mov    %cx,-0xc(%rbp)
                    const bit_index = @intCast(ShiftInt, arch_feature_index % @bitSizeOf(usize));
  101e62:	83 e0 3f             	and    $0x3f,%eax
  101e65:	66 89 c1             	mov    %ax,%cx
  101e68:	66 89 4d e6          	mov    %cx,-0x1a(%rbp)
  101e6c:	83 f0 3f             	xor    $0x3f,%eax
  101e6f:	66 83 e8 3f          	sub    $0x3f,%ax
  101e73:	77 04                	ja     101e79 <target.Target.Cpu.Feature.Set.addFeature+0x49>
  101e75:	eb 00                	jmp    101e77 <target.Target.Cpu.Feature.Set.addFeature+0x47>
  101e77:	eb 22                	jmp    101e9b <target.Target.Cpu.Feature.Set.addFeature+0x6b>
  101e79:	48 bf 89 05 10 00 00 	movabs $0x100589,%rdi
  101e80:	00 00 00 
  101e83:	be 1b 00 00 00       	mov    $0x1b,%esi
  101e88:	31 c0                	xor    %eax,%eax
  101e8a:	89 c2                	mov    %eax,%edx
  101e8c:	48 b9 80 07 10 00 00 	movabs $0x100780,%rcx
  101e93:	00 00 00 
  101e96:	e8 75 00 00 00       	callq  101f10 <builtin.default_panic>
  101e9b:	66 8b 45 e4          	mov    -0x1c(%rbp),%ax
  101e9f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  101ea3:	66 8b 55 e6          	mov    -0x1a(%rbp),%dx
  101ea7:	88 55 c7             	mov    %dl,-0x39(%rbp)
  101eaa:	80 e2 3f             	and    $0x3f,%dl
  101ead:	88 55 f7             	mov    %dl,-0x9(%rbp)
                    set.ints[usize_index] |= @as(usize, 1) << bit_index;
  101eb0:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  101eb4:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  101eb8:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  101ebc:	0f b7 c0             	movzwl %ax,%eax
  101ebf:	25 ff 01 00 00       	and    $0x1ff,%eax
  101ec4:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  101ec8:	48 83 f8 05          	cmp    $0x5,%rax
  101ecc:	73 02                	jae    101ed0 <target.Target.Cpu.Feature.Set.addFeature+0xa0>
  101ece:	eb 0e                	jmp    101ede <target.Target.Cpu.Feature.Set.addFeature+0xae>
  101ed0:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  101ed4:	be 05 00 00 00       	mov    $0x5,%esi
  101ed9:	e8 12 ff ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  101ede:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  101ee2:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  101ee6:	8a 4d c7             	mov    -0x39(%rbp),%cl
  101ee9:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
  101eed:	0f b6 c9             	movzbl %cl,%ecx
  101ef0:	83 e1 3f             	and    $0x3f,%ecx
  101ef3:	be 01 00 00 00       	mov    $0x1,%esi
  101ef8:	48 d3 e6             	shl    %cl,%rsi
  101efb:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  101eff:	48 09 f2             	or     %rsi,%rdx
  101f02:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
  101f06:	48 83 c4 40          	add    $0x40,%rsp
  101f0a:	5d                   	pop    %rbp
  101f0b:	c3                   	retq   
  101f0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101f10 <builtin.default_panic>:
pub fn default_panic(msg: []const u8, error_return_trace: ?*StackTrace, ret_addr: ?usize) noreturn {
  101f10:	55                   	push   %rbp
  101f11:	48 89 e5             	mov    %rsp,%rbp
  101f14:	48 83 ec 18          	sub    $0x18,%rsp
  101f18:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  101f1c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  101f20:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
                @breakpoint();
  101f24:	cc                   	int3   
  101f25:	eb fd                	jmp    101f24 <builtin.default_panic+0x14>
  101f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  101f2e:	00 00 

0000000000101f30 <target.Target.Cpu.Arch.isWasm>:
                    .thumb, .thumbeb => true,
                    else => false,
                };
            }

            pub fn isWasm(arch: Arch) bool {
  101f30:	55                   	push   %rbp
  101f31:	48 89 e5             	mov    %rsp,%rbp
  101f34:	48 83 ec 10          	sub    $0x10,%rsp
  101f38:	40 88 f8             	mov    %dil,%al
  101f3b:	88 45 fd             	mov    %al,-0x3(%rbp)
  101f3e:	88 c1                	mov    %al,%cl
  101f40:	80 e1 3f             	and    $0x3f,%cl
  101f43:	88 4d fe             	mov    %cl,-0x2(%rbp)
                return switch (arch) {
  101f46:	04 0a                	add    $0xa,%al
  101f48:	24 3f                	and    $0x3f,%al
  101f4a:	2c 02                	sub    $0x2,%al
  101f4c:	72 13                	jb     101f61 <target.Target.Cpu.Arch.isWasm+0x31>
  101f4e:	eb 00                	jmp    101f50 <target.Target.Cpu.Arch.isWasm+0x20>
  101f50:	8a 45 fd             	mov    -0x3(%rbp),%al
  101f53:	0f b6 f8             	movzbl %al,%edi
  101f56:	e8 45 00 00 00       	callq  101fa0 <__zig_is_named_enum_value_target.Target.Cpu.Arch>
  101f5b:	a8 01                	test   $0x1,%al
  101f5d:	75 08                	jne    101f67 <target.Target.Cpu.Arch.isWasm+0x37>
  101f5f:	eb 08                	jmp    101f69 <target.Target.Cpu.Arch.isWasm+0x39>
  101f61:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
  101f65:	eb 28                	jmp    101f8f <target.Target.Cpu.Arch.isWasm+0x5f>
  101f67:	eb 22                	jmp    101f8b <target.Target.Cpu.Arch.isWasm+0x5b>
  101f69:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  101f70:	00 00 00 
  101f73:	be 17 00 00 00       	mov    $0x17,%esi
  101f78:	31 c0                	xor    %eax,%eax
  101f7a:	89 c2                	mov    %eax,%edx
  101f7c:	48 b9 90 07 10 00 00 	movabs $0x100790,%rcx
  101f83:	00 00 00 
  101f86:	e8 85 ff ff ff       	callq  101f10 <builtin.default_panic>
  101f8b:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
  101f8f:	8a 45 ff             	mov    -0x1(%rbp),%al
  101f92:	48 83 c4 10          	add    $0x10,%rsp
  101f96:	5d                   	pop    %rbp
  101f97:	c3                   	retq   
  101f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101f9f:	00 

0000000000101fa0 <__zig_is_named_enum_value_target.Target.Cpu.Arch>:
  101fa0:	55                   	push   %rbp
  101fa1:	48 89 e5             	mov    %rsp,%rbp
  101fa4:	40 88 f8             	mov    %dil,%al
  101fa7:	88 45 ff             	mov    %al,-0x1(%rbp)
  101faa:	c0 e0 02             	shl    $0x2,%al
  101fad:	c0 f8 02             	sar    $0x2,%al
  101fb0:	2c fc                	sub    $0xfc,%al
  101fb2:	7c 11                	jl     101fc5 <__zig_is_named_enum_value_target.Target.Cpu.Arch+0x25>
  101fb4:	eb 00                	jmp    101fb6 <__zig_is_named_enum_value_target.Target.Cpu.Arch+0x16>
  101fb6:	8a 45 ff             	mov    -0x1(%rbp),%al
  101fb9:	c0 e0 02             	shl    $0x2,%al
  101fbc:	c0 f8 02             	sar    $0x2,%al
  101fbf:	84 c0                	test   %al,%al
  101fc1:	78 06                	js     101fc9 <__zig_is_named_enum_value_target.Target.Cpu.Arch+0x29>
  101fc3:	eb 00                	jmp    101fc5 <__zig_is_named_enum_value_target.Target.Cpu.Arch+0x25>
  101fc5:	b0 01                	mov    $0x1,%al
  101fc7:	5d                   	pop    %rbp
  101fc8:	c3                   	retq   
  101fc9:	31 c0                	xor    %eax,%eax
  101fcb:	5d                   	pop    %rbp
  101fcc:	c3                   	retq   
  101fcd:	0f 1f 00             	nopl   (%rax)

0000000000101fd0 <KernelMain>:
const frame_buffer_config = @import("frame_buffer_config.zig");
const graphics = @import("graphics.zig");
const font = @import("font.zig");

export fn KernelMain(config: *frame_buffer_config.FrameBufferConfig) void {
  101fd0:	55                   	push   %rbp
  101fd1:	48 89 e5             	mov    %rsp,%rbp
  101fd4:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  101fdb:	48 89 fe             	mov    %rdi,%rsi
  101fde:	48 89 b5 10 ff ff ff 	mov    %rsi,-0xf0(%rbp)
  101fe5:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
    var pixel_writer = graphics.PixelWriter.create(config);
  101fec:	48 8d bd 30 ff ff ff 	lea    -0xd0(%rbp),%rdi
  101ff3:	e8 38 03 00 00       	callq  102330 <graphics.PixelWriter.create>
  101ff8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  101fff:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
  102006:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  10200d:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)

    {
        var x: usize = 0;
  102014:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
  10201b:	00 00 00 00 
  10201f:	48 8b 8d 10 ff ff ff 	mov    -0xf0(%rbp),%rcx
        while (x < config.horizontal_resolution) : (x += 1) {
  102026:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  10202d:	8b 49 0c             	mov    0xc(%rcx),%ecx
  102030:	48 39 c8             	cmp    %rcx,%rax
  102033:	73 0d                	jae    102042 <KernelMain+0x72>
            var y: usize = 0;
  102035:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  10203c:	00 00 00 00 
  102040:	eb 05                	jmp    102047 <KernelMain+0x77>
        while (x < config.horizontal_resolution) : (x += 1) {
  102042:	e9 37 01 00 00       	jmpq   10217e <KernelMain+0x1ae>
  102047:	48 8b 8d 10 ff ff ff 	mov    -0xf0(%rbp),%rcx
            while (y < config.vertical_resolution) : (y += 1) {
  10204e:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  102055:	8b 49 10             	mov    0x10(%rcx),%ecx
  102058:	48 39 c8             	cmp    %rcx,%rax
  10205b:	0f 83 95 00 00 00    	jae    1020f6 <KernelMain+0x126>
                pixel_writer.write(x, y, &graphics.PixelColor.white());
  102061:	0f 10 85 20 ff ff ff 	movups -0xe0(%rbp),%xmm0
  102068:	0f 29 85 50 ff ff ff 	movaps %xmm0,-0xb0(%rbp)
  10206f:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  102076:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  10207d:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  102084:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  10208b:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  102092:	e8 39 03 00 00       	callq  1023d0 <graphics.PixelColor.white>
  102097:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
  10209e:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  1020a5:	8a 85 62 ff ff ff    	mov    -0x9e(%rbp),%al
  1020ab:	88 85 6a ff ff ff    	mov    %al,-0x96(%rbp)
  1020b1:	66 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%ax
  1020b8:	66 89 85 68 ff ff ff 	mov    %ax,-0x98(%rbp)
  1020bf:	48 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%rdi
  1020c6:	48 8d 8d 68 ff ff ff 	lea    -0x98(%rbp),%rcx
  1020cd:	e8 1e 03 00 00       	callq  1023f0 <graphics.PixelWriter.write>
            while (y < config.vertical_resolution) : (y += 1) {
  1020d2:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  1020d9:	48 ff c0             	inc    %rax
  1020dc:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  1020e3:	0f 94 85 78 ff ff ff 	sete   -0x88(%rbp)
  1020ea:	8a 85 78 ff ff ff    	mov    -0x88(%rbp),%al
  1020f0:	84 c0                	test   %al,%al
  1020f2:	74 04                	je     1020f8 <KernelMain+0x128>
  1020f4:	eb 04                	jmp    1020fa <KernelMain+0x12a>
  1020f6:	eb 37                	jmp    10212f <KernelMain+0x15f>
  1020f8:	eb 22                	jmp    10211c <KernelMain+0x14c>
  1020fa:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102101:	00 00 00 
  102104:	be 10 00 00 00       	mov    $0x10,%esi
  102109:	31 c0                	xor    %eax,%eax
  10210b:	89 c2                	mov    %eax,%edx
  10210d:	48 b9 a0 07 10 00 00 	movabs $0x1007a0,%rcx
  102114:	00 00 00 
  102117:	e8 f4 fd ff ff       	callq  101f10 <builtin.default_panic>
  10211c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  102123:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  10212a:	e9 18 ff ff ff       	jmpq   102047 <KernelMain+0x77>
        while (x < config.horizontal_resolution) : (x += 1) {
  10212f:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  102136:	48 ff c0             	inc    %rax
  102139:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  10213d:	0f 94 45 88          	sete   -0x78(%rbp)
  102141:	8a 45 88             	mov    -0x78(%rbp),%al
  102144:	84 c0                	test   %al,%al
  102146:	75 04                	jne    10214c <KernelMain+0x17c>
  102148:	eb 00                	jmp    10214a <KernelMain+0x17a>
  10214a:	eb 22                	jmp    10216e <KernelMain+0x19e>
  10214c:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102153:	00 00 00 
  102156:	be 10 00 00 00       	mov    $0x10,%esi
  10215b:	31 c0                	xor    %eax,%eax
  10215d:	89 c2                	mov    %eax,%edx
  10215f:	48 b9 b0 07 10 00 00 	movabs $0x1007b0,%rcx
  102166:	00 00 00 
  102169:	e8 a2 fd ff ff       	callq  101f10 <builtin.default_panic>
  10216e:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  102172:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  102179:	e9 a1 fe ff ff       	jmpq   10201f <KernelMain+0x4f>
            }
        }
    }
    {
        var x: usize = 0;
  10217e:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  102185:	00 
        while (x < 200) : (x += 1) {
  102186:	48 81 7d 90 c8 00 00 	cmpq   $0xc8,-0x70(%rbp)
  10218d:	00 
  10218e:	73 0a                	jae    10219a <KernelMain+0x1ca>
            var y: usize = 0;
  102190:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  102197:	00 
  102198:	eb 05                	jmp    10219f <KernelMain+0x1cf>
        while (x < 200) : (x += 1) {
  10219a:	e9 b4 00 00 00       	jmpq   102253 <KernelMain+0x283>
            while (y < 300) : (y += 1) {
  10219f:	48 81 7d 98 2c 01 00 	cmpq   $0x12c,-0x68(%rbp)
  1021a6:	00 
  1021a7:	73 31                	jae    1021da <KernelMain+0x20a>
                pixel_writer.write(x, y, &graphics.PixelColor{ .r = 200, .b = 200 });
  1021a9:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  1021ad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  1021b1:	b9 51 02 10 00       	mov    $0x100251,%ecx
  1021b6:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
  1021bd:	e8 2e 02 00 00       	callq  1023f0 <graphics.PixelWriter.write>
            while (y < 300) : (y += 1) {
  1021c2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  1021c6:	48 ff c0             	inc    %rax
  1021c9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  1021cd:	0f 94 45 a8          	sete   -0x58(%rbp)
  1021d1:	8a 45 a8             	mov    -0x58(%rbp),%al
  1021d4:	84 c0                	test   %al,%al
  1021d6:	74 04                	je     1021dc <KernelMain+0x20c>
  1021d8:	eb 04                	jmp    1021de <KernelMain+0x20e>
  1021da:	eb 2e                	jmp    10220a <KernelMain+0x23a>
  1021dc:	eb 22                	jmp    102200 <KernelMain+0x230>
  1021de:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1021e5:	00 00 00 
  1021e8:	be 10 00 00 00       	mov    $0x10,%esi
  1021ed:	31 c0                	xor    %eax,%eax
  1021ef:	89 c2                	mov    %eax,%edx
  1021f1:	48 b9 c0 07 10 00 00 	movabs $0x1007c0,%rcx
  1021f8:	00 00 00 
  1021fb:	e8 10 fd ff ff       	callq  101f10 <builtin.default_panic>
  102200:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  102204:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  102208:	eb 95                	jmp    10219f <KernelMain+0x1cf>
        while (x < 200) : (x += 1) {
  10220a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  10220e:	48 ff c0             	inc    %rax
  102211:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  102215:	0f 94 45 b8          	sete   -0x48(%rbp)
  102219:	8a 45 b8             	mov    -0x48(%rbp),%al
  10221c:	84 c0                	test   %al,%al
  10221e:	75 04                	jne    102224 <KernelMain+0x254>
  102220:	eb 00                	jmp    102222 <KernelMain+0x252>
  102222:	eb 22                	jmp    102246 <KernelMain+0x276>
  102224:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10222b:	00 00 00 
  10222e:	be 10 00 00 00       	mov    $0x10,%esi
  102233:	31 c0                	xor    %eax,%eax
  102235:	89 c2                	mov    %eax,%edx
  102237:	48 b9 d0 07 10 00 00 	movabs $0x1007d0,%rcx
  10223e:	00 00 00 
  102241:	e8 ca fc ff ff       	callq  101f10 <builtin.default_panic>
  102246:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  10224a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  10224e:	e9 33 ff ff ff       	jmpq   102186 <KernelMain+0x1b6>
            }
        }
    }

    font.writeAscii(&pixel_writer, 50, 50, 'A', &graphics.PixelColor.black());
  102253:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  102257:	e8 84 02 00 00       	callq  1024e0 <graphics.PixelColor.black>
  10225c:	66 8b 45 c0          	mov    -0x40(%rbp),%ax
  102260:	66 89 45 c8          	mov    %ax,-0x38(%rbp)
  102264:	8a 45 c2             	mov    -0x3e(%rbp),%al
  102267:	88 45 ca             	mov    %al,-0x36(%rbp)
  10226a:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
  102271:	ba 32 00 00 00       	mov    $0x32,%edx
  102276:	b9 41 00 00 00       	mov    $0x41,%ecx
  10227b:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  10227f:	48 89 d6             	mov    %rdx,%rsi
  102282:	e8 79 02 00 00       	callq  102500 <font.writeAscii>
    font.writeAscii(&pixel_writer, 58, 50, 'B', &graphics.PixelColor.black());
  102287:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  10228b:	e8 50 02 00 00       	callq  1024e0 <graphics.PixelColor.black>
  102290:	66 8b 45 d0          	mov    -0x30(%rbp),%ax
  102294:	66 89 45 d8          	mov    %ax,-0x28(%rbp)
  102298:	8a 45 d2             	mov    -0x2e(%rbp),%al
  10229b:	88 45 da             	mov    %al,-0x26(%rbp)
  10229e:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
  1022a5:	be 3a 00 00 00       	mov    $0x3a,%esi
  1022aa:	ba 32 00 00 00       	mov    $0x32,%edx
  1022af:	b9 42 00 00 00       	mov    $0x42,%ecx
  1022b4:	4c 8d 45 d8          	lea    -0x28(%rbp),%r8
  1022b8:	e8 43 02 00 00       	callq  102500 <font.writeAscii>
    font.writeAscii(&pixel_writer, 66, 50, 'C', &graphics.PixelColor.black());
  1022bd:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  1022c1:	e8 1a 02 00 00       	callq  1024e0 <graphics.PixelColor.black>
  1022c6:	66 8b 45 e0          	mov    -0x20(%rbp),%ax
  1022ca:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
  1022ce:	8a 45 e2             	mov    -0x1e(%rbp),%al
  1022d1:	88 45 ea             	mov    %al,-0x16(%rbp)
  1022d4:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
  1022db:	be 42 00 00 00       	mov    $0x42,%esi
  1022e0:	ba 32 00 00 00       	mov    $0x32,%edx
  1022e5:	b9 43 00 00 00       	mov    $0x43,%ecx
  1022ea:	4c 8d 45 e8          	lea    -0x18(%rbp),%r8
  1022ee:	e8 0d 02 00 00       	callq  102500 <font.writeAscii>
    font.writeAscii(&pixel_writer, 74, 50, '!', &graphics.PixelColor.black());
  1022f3:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  1022f7:	e8 e4 01 00 00       	callq  1024e0 <graphics.PixelColor.black>
  1022fc:	66 8b 45 f0          	mov    -0x10(%rbp),%ax
  102300:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  102304:	8a 45 f2             	mov    -0xe(%rbp),%al
  102307:	88 45 fa             	mov    %al,-0x6(%rbp)
  10230a:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
  102311:	be 4a 00 00 00       	mov    $0x4a,%esi
  102316:	ba 32 00 00 00       	mov    $0x32,%edx
  10231b:	b9 21 00 00 00       	mov    $0x21,%ecx
  102320:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
  102324:	e8 d7 01 00 00       	callq  102500 <font.writeAscii>

    while (true) asm volatile ("hlt");
  102329:	f4                   	hlt    
  10232a:	eb fd                	jmp    102329 <KernelMain+0x359>
  10232c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000102330 <graphics.PixelWriter.create>:

pub const PixelWriter = union(enum) {
    rgb: RGBResv8BitPerColorPixelWriter,
    bgr: BGRResv8BitPerColorPixelWriter,

    pub fn create(config: *frame_buffer_config.FrameBufferConfig) PixelWriter {
  102330:	55                   	push   %rbp
  102331:	48 89 e5             	mov    %rsp,%rbp
  102334:	48 83 ec 40          	sub    $0x40,%rsp
  102338:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  10233c:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  102340:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  102344:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
        return switch (config.pixel_format) {
  102348:	8a 46 14             	mov    0x14(%rsi),%al
  10234b:	88 45 e7             	mov    %al,-0x19(%rbp)
  10234e:	2c 01                	sub    $0x1,%al
  102350:	74 2d                	je     10237f <graphics.PixelWriter.create+0x4f>
  102352:	eb 00                	jmp    102354 <graphics.PixelWriter.create+0x24>
  102354:	8a 45 e7             	mov    -0x19(%rbp),%al
  102357:	2c 02                	sub    $0x2,%al
  102359:	74 42                	je     10239d <graphics.PixelWriter.create+0x6d>
  10235b:	eb 00                	jmp    10235d <graphics.PixelWriter.create+0x2d>
  10235d:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  102364:	00 00 00 
  102367:	be 17 00 00 00       	mov    $0x17,%esi
  10236c:	31 c0                	xor    %eax,%eax
  10236e:	89 c2                	mov    %eax,%edx
  102370:	48 b9 e0 07 10 00 00 	movabs $0x1007e0,%rcx
  102377:	00 00 00 
  10237a:	e8 91 fb ff ff       	callq  101f10 <builtin.default_panic>
  10237f:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            .kPixelRGBResv8BitPerColor => PixelWriter{ .rgb = RGBResv8BitPerColorPixelWriter.init(config) },
  102383:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  102387:	e8 34 05 00 00       	callq  1028c0 <graphics.RGBResv8BitPerColorPixelWriter.init>
  10238c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  102390:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  102394:	48 89 08             	mov    %rcx,(%rax)
  102397:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  10239b:	eb 1c                	jmp    1023b9 <graphics.PixelWriter.create+0x89>
  10239d:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            .kPixelBGRResv8BitPerColor => PixelWriter{ .bgr = BGRResv8BitPerColorPixelWriter.init(config) },
  1023a1:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  1023a5:	e8 36 05 00 00       	callq  1028e0 <graphics.BGRResv8BitPerColorPixelWriter.init>
  1023aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1023ae:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  1023b2:	48 89 08             	mov    %rcx,(%rax)
  1023b5:	c6 40 08 01          	movb   $0x1,0x8(%rax)
  1023b9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
        return switch (config.pixel_format) {
  1023bd:	48 83 c4 40          	add    $0x40,%rsp
  1023c1:	5d                   	pop    %rbp
  1023c2:	c3                   	retq   
  1023c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1023ca:	00 00 00 
  1023cd:	0f 1f 00             	nopl   (%rax)

00000000001023d0 <graphics.PixelColor.white>:
    pub fn white() PixelColor {
  1023d0:	55                   	push   %rbp
  1023d1:	48 89 e5             	mov    %rsp,%rbp
  1023d4:	48 89 f8             	mov    %rdi,%rax
        return PixelColor{ .r = 255, .g = 255, .b = 255 };
  1023d7:	66 8b 0c 25 70 02 10 	mov    0x100270,%cx
  1023de:	00 
  1023df:	66 89 0f             	mov    %cx,(%rdi)
  1023e2:	8a 0c 25 72 02 10 00 	mov    0x100272,%cl
  1023e9:	88 4f 02             	mov    %cl,0x2(%rdi)
  1023ec:	5d                   	pop    %rbp
  1023ed:	c3                   	retq   
  1023ee:	66 90                	xchg   %ax,%ax

00000000001023f0 <graphics.PixelWriter.write>:
    }
    pub fn pixelAt(config: *frame_buffer_config.FrameBufferConfig, x: usize, y: usize) [*]u8 {
        const frame_buffer = @ptrCast([*]u8, config.frame_buffer);
        return @ptrCast([*]u8, &frame_buffer[4 * (config.pixels_per_scan_line * y + x)]);
    }
    pub fn write(self: PixelWriter, x: usize, y: usize, c: *const PixelColor) void {
  1023f0:	55                   	push   %rbp
  1023f1:	48 89 e5             	mov    %rsp,%rbp
  1023f4:	48 83 ec 60          	sub    $0x60,%rsp
  1023f8:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  1023fc:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  102400:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  102404:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  102408:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  10240c:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  102410:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
        switch (self) {
  102414:	8a 47 08             	mov    0x8(%rdi),%al
  102417:	88 45 c7             	mov    %al,-0x39(%rbp)
  10241a:	84 c0                	test   %al,%al
  10241c:	75 46                	jne    102464 <graphics.PixelWriter.write+0x74>
  10241e:	eb 00                	jmp    102420 <graphics.PixelWriter.write+0x30>
  102420:	8a 45 c7             	mov    -0x39(%rbp),%al
  102423:	a8 01                	test   $0x1,%al
  102425:	74 13                	je     10243a <graphics.PixelWriter.write+0x4a>
  102427:	eb 00                	jmp    102429 <graphics.PixelWriter.write+0x39>
  102429:	8a 45 c7             	mov    -0x39(%rbp),%al
  10242c:	0f b6 f8             	movzbl %al,%edi
  10242f:	e8 6c 05 00 00       	callq  1029a0 <__zig_is_named_enum_value_@typeInfo(graphics.PixelWriter).Union.tag_type.?>
  102434:	a8 01                	test   $0x1,%al
  102436:	75 56                	jne    10248e <graphics.PixelWriter.write+0x9e>
  102438:	eb 56                	jmp    102490 <graphics.PixelWriter.write+0xa0>
  10243a:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  10243e:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  102442:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  102446:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  10244a:	48 8b 00             	mov    (%rax),%rax
  10244d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  102451:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  102455:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
            inline else => |case| case.write(x, y, c),
  102459:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
  10245d:	e8 9e 04 00 00       	callq  102900 <graphics.RGBResv8BitPerColorPixelWriter.write>
  102462:	eb 70                	jmp    1024d4 <graphics.PixelWriter.write+0xe4>
  102464:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  102468:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  10246c:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  102470:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  102474:	48 8b 00             	mov    (%rax),%rax
  102477:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  10247b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10247f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  102483:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  102487:	e8 c4 04 00 00       	callq  102950 <graphics.BGRResv8BitPerColorPixelWriter.write>
  10248c:	eb 46                	jmp    1024d4 <graphics.PixelWriter.write+0xe4>
        switch (self) {
  10248e:	eb 22                	jmp    1024b2 <graphics.PixelWriter.write+0xc2>
  102490:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  102497:	00 00 00 
  10249a:	be 17 00 00 00       	mov    $0x17,%esi
  10249f:	31 c0                	xor    %eax,%eax
  1024a1:	89 c2                	mov    %eax,%edx
  1024a3:	48 b9 f0 07 10 00 00 	movabs $0x1007f0,%rcx
  1024aa:	00 00 00 
  1024ad:	e8 5e fa ff ff       	callq  101f10 <builtin.default_panic>
  1024b2:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  1024b9:	00 00 00 
  1024bc:	be 17 00 00 00       	mov    $0x17,%esi
  1024c1:	31 c0                	xor    %eax,%eax
  1024c3:	89 c2                	mov    %eax,%edx
  1024c5:	48 b9 00 08 10 00 00 	movabs $0x100800,%rcx
  1024cc:	00 00 00 
  1024cf:	e8 3c fa ff ff       	callq  101f10 <builtin.default_panic>
  1024d4:	48 83 c4 60          	add    $0x60,%rsp
  1024d8:	5d                   	pop    %rbp
  1024d9:	c3                   	retq   
  1024da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000001024e0 <graphics.PixelColor.black>:
    pub fn black() PixelColor {
  1024e0:	55                   	push   %rbp
  1024e1:	48 89 e5             	mov    %rsp,%rbp
  1024e4:	48 89 f8             	mov    %rdi,%rax
        return PixelColor{};
  1024e7:	66 8b 0c 25 73 02 10 	mov    0x100273,%cx
  1024ee:	00 
  1024ef:	66 89 0f             	mov    %cx,(%rdi)
  1024f2:	8a 0c 25 75 02 10 00 	mov    0x100275,%cl
  1024f9:	88 4f 02             	mov    %cl,0x2(%rdi)
  1024fc:	5d                   	pop    %rbp
  1024fd:	c3                   	retq   
  1024fe:	66 90                	xchg   %ax,%ax

0000000000102500 <font.writeAscii>:

extern var _binary_hankaku_bin_start: u8;
extern var _binary_hankaku_bin_end: u8;
extern var _binary_hankaku_bin_size: u8;

pub fn writeAscii(writer: *graphics.PixelWriter, x: usize, y: usize, c: u8, color: *const graphics.PixelColor) void {
  102500:	55                   	push   %rbp
  102501:	48 89 e5             	mov    %rsp,%rbp
  102504:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  10250b:	4c 89 85 68 ff ff ff 	mov    %r8,-0x98(%rbp)
  102512:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  102519:	48 89 b5 78 ff ff ff 	mov    %rsi,-0x88(%rbp)
  102520:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  102524:	88 c8                	mov    %cl,%al
  102526:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  10252a:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  10252e:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  102532:	88 45 a7             	mov    %al,-0x59(%rbp)
  102535:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
    if (_binary_hankaku_bin_size != 0) return;
  102539:	48 8b 05 a0 5b 00 00 	mov    0x5ba0(%rip),%rax        # 1080e0 <memset+0x1150>
  102540:	80 38 00             	cmpb   $0x0,(%rax)
  102543:	74 09                	je     10254e <font.writeAscii+0x4e>
  102545:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  10254c:	5d                   	pop    %rbp
  10254d:	c3                   	retq   
  10254e:	eb 00                	jmp    102550 <font.writeAscii+0x50>
    _ = c;
    {
        var dy: usize = 0;
  102550:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  102557:	00 
        while (dy < 16) : (dy += 1) {
  102558:	48 83 7d b0 10       	cmpq   $0x10,-0x50(%rbp)
  10255d:	73 06                	jae    102565 <font.writeAscii+0x65>
            var dx: u6 = 0;
  10255f:	c6 45 bf 00          	movb   $0x0,-0x41(%rbp)
  102563:	eb 05                	jmp    10256a <font.writeAscii+0x6a>
        while (dy < 16) : (dy += 1) {
  102565:	e9 65 01 00 00       	jmpq   1026cf <font.writeAscii+0x1cf>
            while (dx < 8) : (dx += 1) {
  10256a:	8a 45 bf             	mov    -0x41(%rbp),%al
  10256d:	2c 07                	sub    $0x7,%al
  10256f:	77 34                	ja     1025a5 <font.writeAscii+0xa5>
  102571:	eb 00                	jmp    102573 <font.writeAscii+0x73>
  102573:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  10257a:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
                // if ((@as(usize, font[dy]) << dx) & 0x80 > 0) {
                writer.write(x + dx, y + dy, color);
  10257e:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  102582:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  102586:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  10258d:	0f b6 4d bf          	movzbl -0x41(%rbp),%ecx
  102591:	48 01 c8             	add    %rcx,%rax
  102594:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  102598:	0f 92 45 d0          	setb   -0x30(%rbp)
  10259c:	8a 45 d0             	mov    -0x30(%rbp),%al
  10259f:	84 c0                	test   %al,%al
  1025a1:	74 07                	je     1025aa <font.writeAscii+0xaa>
  1025a3:	eb 07                	jmp    1025ac <font.writeAscii+0xac>
            while (dx < 8) : (dx += 1) {
  1025a5:	e9 dc 00 00 00       	jmpq   102686 <font.writeAscii+0x186>
                writer.write(x + dx, y + dy, color);
  1025aa:	eb 22                	jmp    1025ce <font.writeAscii+0xce>
  1025ac:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1025b3:	00 00 00 
  1025b6:	be 10 00 00 00       	mov    $0x10,%esi
  1025bb:	31 c0                	xor    %eax,%eax
  1025bd:	89 c2                	mov    %eax,%edx
  1025bf:	48 b9 10 08 10 00 00 	movabs $0x100810,%rcx
  1025c6:	00 00 00 
  1025c9:	e8 42 f9 ff ff       	callq  101f10 <builtin.default_panic>
  1025ce:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  1025d5:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  1025d9:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  1025e0:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  1025e4:	48 01 c8             	add    %rcx,%rax
  1025e7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  1025eb:	0f 92 45 e0          	setb   -0x20(%rbp)
  1025ef:	8a 45 e0             	mov    -0x20(%rbp),%al
  1025f2:	84 c0                	test   %al,%al
  1025f4:	75 04                	jne    1025fa <font.writeAscii+0xfa>
  1025f6:	eb 00                	jmp    1025f8 <font.writeAscii+0xf8>
  1025f8:	eb 22                	jmp    10261c <font.writeAscii+0x11c>
  1025fa:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102601:	00 00 00 
  102604:	be 10 00 00 00       	mov    $0x10,%esi
  102609:	31 c0                	xor    %eax,%eax
  10260b:	89 c2                	mov    %eax,%edx
  10260d:	48 b9 20 08 10 00 00 	movabs $0x100820,%rcx
  102614:	00 00 00 
  102617:	e8 f4 f8 ff ff       	callq  101f10 <builtin.default_panic>
  10261c:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  102623:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  10262a:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  102631:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  102635:	e8 b6 fd ff ff       	callq  1023f0 <graphics.PixelWriter.write>
            while (dx < 8) : (dx += 1) {
  10263a:	8a 4d bf             	mov    -0x41(%rbp),%cl
  10263d:	80 c1 01             	add    $0x1,%cl
  102640:	88 c8                	mov    %cl,%al
  102642:	c0 e8 06             	shr    $0x6,%al
  102645:	80 e1 3f             	and    $0x3f,%cl
  102648:	88 4d e8             	mov    %cl,-0x18(%rbp)
  10264b:	88 45 e9             	mov    %al,-0x17(%rbp)
  10264e:	8a 45 e9             	mov    -0x17(%rbp),%al
  102651:	84 c0                	test   %al,%al
  102653:	75 04                	jne    102659 <font.writeAscii+0x159>
  102655:	eb 00                	jmp    102657 <font.writeAscii+0x157>
  102657:	eb 22                	jmp    10267b <font.writeAscii+0x17b>
  102659:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102660:	00 00 00 
  102663:	be 10 00 00 00       	mov    $0x10,%esi
  102668:	31 c0                	xor    %eax,%eax
  10266a:	89 c2                	mov    %eax,%edx
  10266c:	48 b9 30 08 10 00 00 	movabs $0x100830,%rcx
  102673:	00 00 00 
  102676:	e8 95 f8 ff ff       	callq  101f10 <builtin.default_panic>
  10267b:	8a 45 e8             	mov    -0x18(%rbp),%al
  10267e:	88 45 bf             	mov    %al,-0x41(%rbp)
  102681:	e9 e4 fe ff ff       	jmpq   10256a <font.writeAscii+0x6a>
        while (dy < 16) : (dy += 1) {
  102686:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  10268a:	48 ff c0             	inc    %rax
  10268d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  102691:	0f 94 45 f8          	sete   -0x8(%rbp)
  102695:	8a 45 f8             	mov    -0x8(%rbp),%al
  102698:	84 c0                	test   %al,%al
  10269a:	75 04                	jne    1026a0 <font.writeAscii+0x1a0>
  10269c:	eb 00                	jmp    10269e <font.writeAscii+0x19e>
  10269e:	eb 22                	jmp    1026c2 <font.writeAscii+0x1c2>
  1026a0:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1026a7:	00 00 00 
  1026aa:	be 10 00 00 00       	mov    $0x10,%esi
  1026af:	31 c0                	xor    %eax,%eax
  1026b1:	89 c2                	mov    %eax,%edx
  1026b3:	48 b9 40 08 10 00 00 	movabs $0x100840,%rcx
  1026ba:	00 00 00 
  1026bd:	e8 4e f8 ff ff       	callq  101f10 <builtin.default_panic>
  1026c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1026c6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  1026ca:	e9 89 fe ff ff       	jmpq   102558 <font.writeAscii+0x58>
  1026cf:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  1026d6:	5d                   	pop    %rbp
  1026d7:	c3                   	retq   
  1026d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1026df:	00 

00000000001026e0 <debug.panicExtra__anon_1064>:
pub fn panicExtra(
    trace: ?*std.builtin.StackTrace,
    ret_addr: ?usize,
    comptime format: []const u8,
    args: anytype,
) noreturn {
  1026e0:	55                   	push   %rbp
  1026e1:	48 89 e5             	mov    %rsp,%rbp
  1026e4:	b8 c0 11 00 00       	mov    $0x11c0,%eax
  1026e9:	e8 e2 46 00 00       	callq  106dd0 <__zig_probe_stack>
  1026ee:	48 29 c4             	sub    %rax,%rsp
  1026f1:	48 89 95 68 ee ff ff 	mov    %rdx,-0x1198(%rbp)
  1026f8:	48 89 b5 70 ee ff ff 	mov    %rsi,-0x1190(%rbp)
  1026ff:	48 89 bd 78 ee ff ff 	mov    %rdi,-0x1188(%rbp)
  102706:	48 89 bd 90 ee ff ff 	mov    %rdi,-0x1170(%rbp)
  10270d:	48 8d 85 98 ee ff ff 	lea    -0x1168(%rbp),%rax
  102714:	48 89 85 a0 ef ff ff 	mov    %rax,-0x1060(%rbp)
  10271b:	48 c7 85 a8 ef ff ff 	movq   $0x20,-0x1058(%rbp)
  102722:	20 00 00 00 
  102726:	48 c7 85 98 ef ff ff 	movq   $0x0,-0x1068(%rbp)
  10272d:	00 00 00 00 
  102731:	48 8b 85 98 ef ff ff 	mov    -0x1068(%rbp),%rax
  102738:	48 89 85 80 ee ff ff 	mov    %rax,-0x1180(%rbp)
    @setCold(true);

    const size = 0x1000;
    const trunc_msg = "(msg truncated)";
  10273f:	48 b8 cb 05 10 00 00 	movabs $0x1005cb,%rax
  102746:	00 00 00 
  102749:	48 89 85 b0 ef ff ff 	mov    %rax,-0x1050(%rbp)
    var buf: [size + trunc_msg.len]u8 = undefined;
  102750:	48 8d bd b9 ef ff ff 	lea    -0x1047(%rbp),%rdi
  102757:	be aa 00 00 00       	mov    $0xaa,%esi
  10275c:	ba 0f 10 00 00       	mov    $0x100f,%edx
  102761:	e8 2a 48 00 00       	callq  106f90 <memset>
    // a minor annoyance with this is that it will result in the NoSpaceLeft
    // error being part of the @panic stack trace (but that error should
    // only happen rarely)
    const msg = std.fmt.bufPrint(buf[0..size], format, args) catch |err| switch (err) {
  102766:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  10276d:	48 89 85 88 ee ff ff 	mov    %rax,-0x1178(%rbp)
  102774:	b0 01                	mov    $0x1,%al
  102776:	a8 01                	test   $0x1,%al
  102778:	75 02                	jne    10277c <debug.panicExtra__anon_1064+0x9c>
  10277a:	eb 02                	jmp    10277e <debug.panicExtra__anon_1064+0x9e>
  10277c:	eb 0e                	jmp    10278c <debug.panicExtra__anon_1064+0xac>
  10277e:	31 c0                	xor    %eax,%eax
  102780:	89 c7                	mov    %eax,%edi
  102782:	be 00 10 00 00       	mov    $0x1000,%esi
  102787:	e8 34 02 00 00       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  10278c:	4c 8b 85 68 ee ff ff 	mov    -0x1198(%rbp),%r8
  102793:	48 8b 95 88 ee ff ff 	mov    -0x1178(%rbp),%rdx
  10279a:	b9 00 10 00 00       	mov    $0x1000,%ecx
  10279f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  1027a3:	48 8d b5 98 ef ff ff 	lea    -0x1068(%rbp),%rsi
  1027aa:	e8 51 02 00 00       	callq  102a00 <fmt.bufPrint__anon_1208>
  1027af:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%rbp)
  1027b4:	75 1b                	jne    1027d1 <debug.panicExtra__anon_1064+0xf1>
  1027b6:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  1027ba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1027be:	48 89 8d 58 ee ff ff 	mov    %rcx,-0x11a8(%rbp)
  1027c5:	48 89 85 60 ee ff ff 	mov    %rax,-0x11a0(%rbp)
  1027cc:	e9 b3 00 00 00       	jmpq   102884 <debug.panicExtra__anon_1064+0x1a4>
  1027d1:	66 8b 45 d8          	mov    -0x28(%rbp),%ax
  1027d5:	66 83 e8 01          	sub    $0x1,%ax
  1027d9:	74 24                	je     1027ff <debug.panicExtra__anon_1064+0x11f>
  1027db:	eb 00                	jmp    1027dd <debug.panicExtra__anon_1064+0xfd>
  1027dd:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  1027e4:	00 00 00 
  1027e7:	be 17 00 00 00       	mov    $0x17,%esi
  1027ec:	31 c0                	xor    %eax,%eax
  1027ee:	89 c2                	mov    %eax,%edx
  1027f0:	48 b9 50 08 10 00 00 	movabs $0x100850,%rcx
  1027f7:	00 00 00 
  1027fa:	e8 11 f7 ff ff       	callq  101f10 <builtin.default_panic>
        std.fmt.BufPrintError.NoSpaceLeft => blk: {
            std.mem.copy(u8, buf[size..], trunc_msg);
  1027ff:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  102806:	48 05 00 10 00 00    	add    $0x1000,%rax
  10280c:	48 89 85 50 ee ff ff 	mov    %rax,-0x11b0(%rbp)
  102813:	b0 01                	mov    $0x1,%al
  102815:	a8 01                	test   $0x1,%al
  102817:	75 02                	jne    10281b <debug.panicExtra__anon_1064+0x13b>
  102819:	eb 02                	jmp    10281d <debug.panicExtra__anon_1064+0x13d>
  10281b:	eb 0f                	jmp    10282c <debug.panicExtra__anon_1064+0x14c>
  10281d:	bf 00 10 00 00       	mov    $0x1000,%edi
  102822:	be 0f 10 00 00       	mov    $0x100f,%esi
  102827:	e8 94 01 00 00       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  10282c:	48 8b bd 50 ee ff ff 	mov    -0x11b0(%rbp),%rdi
  102833:	be 0f 00 00 00       	mov    $0xf,%esi
  102838:	48 ba cb 05 10 00 00 	movabs $0x1005cb,%rdx
  10283f:	00 00 00 
  102842:	b9 0f 00 00 00       	mov    $0xf,%ecx
  102847:	e8 f4 02 00 00       	callq  102b40 <mem.copy__anon_1447>
  10284c:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  102853:	48 89 85 48 ee ff ff 	mov    %rax,-0x11b8(%rbp)
  10285a:	48 8b 85 80 ee ff ff 	mov    -0x1180(%rbp),%rax
  102861:	48 8b 8d 48 ee ff ff 	mov    -0x11b8(%rbp),%rcx
    const msg = std.fmt.bufPrint(buf[0..size], format, args) catch |err| switch (err) {
  102868:	48 89 85 98 ef ff ff 	mov    %rax,-0x1068(%rbp)
  10286f:	b8 0f 10 00 00       	mov    $0x100f,%eax
  102874:	48 89 8d 58 ee ff ff 	mov    %rcx,-0x11a8(%rbp)
  10287b:	48 89 85 60 ee ff ff 	mov    %rax,-0x11a0(%rbp)
  102882:	eb 00                	jmp    102884 <debug.panicExtra__anon_1064+0x1a4>
  102884:	48 8b 8d 70 ee ff ff 	mov    -0x1190(%rbp),%rcx
  10288b:	48 8b 95 78 ee ff ff 	mov    -0x1188(%rbp),%rdx
  102892:	48 8b 85 58 ee ff ff 	mov    -0x11a8(%rbp),%rax
  102899:	48 8b b5 60 ee ff ff 	mov    -0x11a0(%rbp),%rsi
  1028a0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  1028a4:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
            break :blk &buf;
        },
    };
    std.builtin.panic(msg, trace, ret_addr);
  1028a8:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  1028ac:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  1028b0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  1028b4:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  1028b8:	e8 53 f6 ff ff       	callq  101f10 <builtin.default_panic>
  1028bd:	0f 1f 00             	nopl   (%rax)

00000000001028c0 <graphics.RGBResv8BitPerColorPixelWriter.init>:
};

const RGBResv8BitPerColorPixelWriter = struct {
    config: *frame_buffer_config.FrameBufferConfig,

    pub fn init(config: *frame_buffer_config.FrameBufferConfig) RGBResv8BitPerColorPixelWriter {
  1028c0:	55                   	push   %rbp
  1028c1:	48 89 e5             	mov    %rsp,%rbp
  1028c4:	50                   	push   %rax
  1028c5:	48 89 f8             	mov    %rdi,%rax
  1028c8:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
        return RGBResv8BitPerColorPixelWriter{
  1028cc:	48 89 37             	mov    %rsi,(%rdi)
  1028cf:	48 83 c4 08          	add    $0x8,%rsp
  1028d3:	5d                   	pop    %rbp
  1028d4:	c3                   	retq   
  1028d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1028dc:	00 00 00 
  1028df:	90                   	nop

00000000001028e0 <graphics.BGRResv8BitPerColorPixelWriter.init>:
};

const BGRResv8BitPerColorPixelWriter = struct {
    config: *frame_buffer_config.FrameBufferConfig,

    pub fn init(config: *frame_buffer_config.FrameBufferConfig) BGRResv8BitPerColorPixelWriter {
  1028e0:	55                   	push   %rbp
  1028e1:	48 89 e5             	mov    %rsp,%rbp
  1028e4:	50                   	push   %rax
  1028e5:	48 89 f8             	mov    %rdi,%rax
  1028e8:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
        return BGRResv8BitPerColorPixelWriter{
  1028ec:	48 89 37             	mov    %rsi,(%rdi)
  1028ef:	48 83 c4 08          	add    $0x8,%rsp
  1028f3:	5d                   	pop    %rbp
  1028f4:	c3                   	retq   
  1028f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1028fc:	00 00 00 
  1028ff:	90                   	nop

0000000000102900 <graphics.RGBResv8BitPerColorPixelWriter.write>:
    pub fn write(self: RGBResv8BitPerColorPixelWriter, x: usize, y: usize, c: *const PixelColor) void {
  102900:	55                   	push   %rbp
  102901:	48 89 e5             	mov    %rsp,%rbp
  102904:	48 83 ec 30          	sub    $0x30,%rsp
  102908:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  10290c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  102910:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  102914:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
        var p = PixelWriter.pixelAt(self.config, x, y);
  102918:	48 8b 3f             	mov    (%rdi),%rdi
  10291b:	e8 d0 02 00 00       	callq  102bf0 <graphics.PixelWriter.pixelAt>
  102920:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  102924:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
        p[0] = c.r;
  102928:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10292c:	8a 11                	mov    (%rcx),%dl
  10292e:	88 10                	mov    %dl,(%rax)
        p[1] = c.g;
  102930:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  102934:	8a 51 01             	mov    0x1(%rcx),%dl
  102937:	88 50 01             	mov    %dl,0x1(%rax)
        p[2] = c.b;
  10293a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10293e:	8a 49 02             	mov    0x2(%rcx),%cl
  102941:	88 48 02             	mov    %cl,0x2(%rax)
  102944:	48 83 c4 30          	add    $0x30,%rsp
  102948:	5d                   	pop    %rbp
  102949:	c3                   	retq   
  10294a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000102950 <graphics.BGRResv8BitPerColorPixelWriter.write>:
            .config = config,
        };
    }
    pub fn write(self: BGRResv8BitPerColorPixelWriter, x: usize, y: usize, c: *const PixelColor) void {
  102950:	55                   	push   %rbp
  102951:	48 89 e5             	mov    %rsp,%rbp
  102954:	48 83 ec 30          	sub    $0x30,%rsp
  102958:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  10295c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  102960:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  102964:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
        var p = PixelWriter.pixelAt(self.config, x, y);
  102968:	48 8b 3f             	mov    (%rdi),%rdi
  10296b:	e8 80 02 00 00       	callq  102bf0 <graphics.PixelWriter.pixelAt>
  102970:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  102974:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
        p[0] = c.b;
  102978:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10297c:	8a 51 02             	mov    0x2(%rcx),%dl
  10297f:	88 10                	mov    %dl,(%rax)
        p[1] = c.g;
  102981:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  102985:	8a 51 01             	mov    0x1(%rcx),%dl
  102988:	88 50 01             	mov    %dl,0x1(%rax)
        p[2] = c.r;
  10298b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10298f:	8a 09                	mov    (%rcx),%cl
  102991:	88 48 02             	mov    %cl,0x2(%rax)
  102994:	48 83 c4 30          	add    $0x30,%rsp
  102998:	5d                   	pop    %rbp
  102999:	c3                   	retq   
  10299a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000001029a0 <__zig_is_named_enum_value_@typeInfo(graphics.PixelWriter).Union.tag_type.?>:
  1029a0:	55                   	push   %rbp
  1029a1:	48 89 e5             	mov    %rsp,%rbp
  1029a4:	31 c0                	xor    %eax,%eax
  1029a6:	84 c0                	test   %al,%al
  1029a8:	75 06                	jne    1029b0 <__zig_is_named_enum_value_@typeInfo(graphics.PixelWriter).Union.tag_type.?+0x10>
  1029aa:	eb 00                	jmp    1029ac <__zig_is_named_enum_value_@typeInfo(graphics.PixelWriter).Union.tag_type.?+0xc>
  1029ac:	b0 01                	mov    $0x1,%al
  1029ae:	5d                   	pop    %rbp
  1029af:	c3                   	retq   
  1029b0:	31 c0                	xor    %eax,%eax
  1029b2:	5d                   	pop    %rbp
  1029b3:	c3                   	retq   
  1029b4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1029bb:	00 00 00 
  1029be:	66 90                	xchg   %ax,%ax

00000000001029c0 <builtin.panicStartGreaterThanEnd>:
}

pub fn panicStartGreaterThanEnd(start: usize, end: usize) noreturn {
  1029c0:	55                   	push   %rbp
  1029c1:	48 89 e5             	mov    %rsp,%rbp
  1029c4:	48 83 ec 30          	sub    $0x30,%rsp
  1029c8:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  1029cc:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    @setCold(true);
    std.debug.panicExtra(null, @returnAddress(), "start index {d} is larger than end index {d}", .{ start, end });
  1029d0:	48 8b 45 08          	mov    0x8(%rbp),%rax
  1029d4:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  1029d8:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  1029dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  1029e0:	c6 45 f8 01          	movb   $0x1,-0x8(%rbp)
  1029e4:	31 c0                	xor    %eax,%eax
  1029e6:	89 c7                	mov    %eax,%edi
  1029e8:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  1029ec:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  1029f0:	e8 eb 02 00 00       	callq  102ce0 <debug.panicExtra__anon_1449>
  1029f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1029fc:	00 00 00 
  1029ff:	90                   	nop

0000000000102a00 <fmt.bufPrint__anon_1208>:
    NoSpaceLeft,
};

/// print a Formatter string into `buf`. Actually just a thin wrapper around `format` and `fixedBufferStream`.
/// returns a slice of the bytes printed to.
pub fn bufPrint(buf: []u8, comptime fmt: []const u8, args: anytype) BufPrintError![]u8 {
  102a00:	55                   	push   %rbp
  102a01:	48 89 e5             	mov    %rsp,%rbp
  102a04:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  102a0b:	4c 89 85 78 ff ff ff 	mov    %r8,-0x88(%rbp)
  102a12:	48 89 d0             	mov    %rdx,%rax
  102a15:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  102a1c:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
  102a23:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
  102a2a:	48 89 ca             	mov    %rcx,%rdx
  102a2d:	48 89 c6             	mov    %rax,%rsi
  102a30:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  102a34:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    var fbs = std.io.fixedBufferStream(buf);
  102a38:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  102a3c:	e8 df 08 00 00       	callq  103320 <io.fixed_buffer_stream.fixedBufferStream__anon_1525>
  102a41:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  102a45:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  102a49:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  102a4d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  102a51:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  102a55:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    try format(fbs.writer(), fmt, args);
  102a59:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  102a5d:	48 8d 75 98          	lea    -0x68(%rbp),%rsi
  102a61:	e8 ea 08 00 00       	callq  103350 <io.fixed_buffer_stream.FixedBufferStream([]u8).writer>
  102a66:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  102a6d:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  102a74:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
  102a78:	e8 43 04 00 00       	callq  102ec0 <fmt.format__anon_1567>
  102a7d:	66 89 45 86          	mov    %ax,-0x7a(%rbp)
  102a81:	66 83 f8 00          	cmp    $0x0,%ax
  102a85:	74 42                	je     102ac9 <fmt.bufPrint__anon_1208+0xc9>
  102a87:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  102a8e:	66 8b 45 86          	mov    -0x7a(%rbp),%ax
  102a92:	66 89 45 e0          	mov    %ax,-0x20(%rbp)
  102a96:	e8 45 07 00 00       	callq  1031e0 <builtin.returnError>
  102a9b:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
  102aa2:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  102aa9:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  102aad:	48 89 11             	mov    %rdx,(%rcx)
  102ab0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  102ab4:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  102ab8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  102abc:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  102ac0:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  102ac7:	5d                   	pop    %rbp
  102ac8:	c3                   	retq   
  102ac9:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    return fbs.getWritten();
  102acd:	e8 9e 08 00 00       	callq  103370 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten>
  102ad2:	48 89 c1             	mov    %rax,%rcx
  102ad5:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  102adc:	66 c7 45 f8 00 00    	movw   $0x0,-0x8(%rbp)
  102ae2:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  102ae6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  102aea:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  102aee:	48 89 08             	mov    %rcx,(%rax)
  102af1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  102af5:	48 89 48 08          	mov    %rcx,0x8(%rax)
  102af9:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  102afd:	48 89 48 10          	mov    %rcx,0x10(%rax)
  102b01:	66 83 78 10 00       	cmpw   $0x0,0x10(%rax)
  102b06:	75 10                	jne    102b18 <fmt.bufPrint__anon_1208+0x118>
  102b08:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  102b0f:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  102b16:	5d                   	pop    %rbp
  102b17:	c3                   	retq   
  102b18:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  102b1f:	e8 bc 06 00 00       	callq  1031e0 <builtin.returnError>
  102b24:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  102b2b:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  102b32:	5d                   	pop    %rbp
  102b33:	c3                   	retq   
  102b34:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  102b3b:	00 00 00 
  102b3e:	66 90                	xchg   %ax,%ax

0000000000102b40 <mem.copy__anon_1447>:
}

/// Copy all of source into dest at position 0.
/// dest.len must be >= source.len.
/// If the slices overlap, dest.ptr must be <= src.ptr.
pub fn copy(comptime T: type, dest: []T, source: []const T) void {
  102b40:	55                   	push   %rbp
  102b41:	48 89 e5             	mov    %rsp,%rbp
  102b44:	48 83 ec 70          	sub    $0x70,%rsp
  102b48:	48 89 c8             	mov    %rcx,%rax
  102b4b:	49 89 f0             	mov    %rsi,%r8
  102b4e:	4c 89 c6             	mov    %r8,%rsi
  102b51:	48 89 75 98          	mov    %rsi,-0x68(%rbp)
  102b55:	48 89 f9             	mov    %rdi,%rcx
  102b58:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  102b5c:	48 89 c1             	mov    %rax,%rcx
  102b5f:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  102b63:	49 89 d1             	mov    %rdx,%r9
  102b66:	4c 89 4d b0          	mov    %r9,-0x50(%rbp)
  102b6a:	4c 89 45 c0          	mov    %r8,-0x40(%rbp)
  102b6e:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  102b72:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  102b76:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    // TODO instead of manually doing this check for the whole array
    // and turning off runtime safety, the compiler should detect loops like
    // this and automatically omit safety checks for loops
    @setRuntimeSafety(false);
    assert(dest.len >= source.len);
  102b7a:	48 39 ce             	cmp    %rcx,%rsi
  102b7d:	0f 93 c0             	setae  %al
  102b80:	0f b6 f8             	movzbl %al,%edi
  102b83:	e8 78 08 00 00       	callq  103400 <debug.assert>
    for (source) |s, i|
  102b88:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  102b8f:	00 
  102b90:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  102b94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  102b98:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  102b9c:	48 39 c8             	cmp    %rcx,%rax
  102b9f:	73 37                	jae    102bd8 <mem.copy__anon_1447+0x98>
  102ba1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  102ba5:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  102ba9:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  102bad:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  102bb1:	8a 14 32             	mov    (%rdx,%rsi,1),%dl
  102bb4:	88 55 e7             	mov    %dl,-0x19(%rbp)
  102bb7:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  102bbb:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
        dest[i] = s;
  102bbf:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  102bc3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  102bc7:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  102bcb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  102bcf:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  102bd3:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  102bd6:	eb 02                	jmp    102bda <mem.copy__anon_1447+0x9a>
  102bd8:	eb 0e                	jmp    102be8 <mem.copy__anon_1447+0xa8>
  102bda:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  102bde:	48 83 c0 01          	add    $0x1,%rax
  102be2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  102be6:	eb a8                	jmp    102b90 <mem.copy__anon_1447+0x50>
  102be8:	48 83 c4 70          	add    $0x70,%rsp
  102bec:	5d                   	pop    %rbp
  102bed:	c3                   	retq   
  102bee:	66 90                	xchg   %ax,%ax

0000000000102bf0 <graphics.PixelWriter.pixelAt>:
    pub fn pixelAt(config: *frame_buffer_config.FrameBufferConfig, x: usize, y: usize) [*]u8 {
  102bf0:	55                   	push   %rbp
  102bf1:	48 89 e5             	mov    %rsp,%rbp
  102bf4:	48 83 ec 60          	sub    $0x60,%rsp
  102bf8:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  102bfc:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  102c00:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  102c04:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
        const frame_buffer = @ptrCast([*]u8, config.frame_buffer);
  102c08:	48 8b 07             	mov    (%rdi),%rax
  102c0b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  102c0f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
        return @ptrCast([*]u8, &frame_buffer[4 * (config.pixels_per_scan_line * y + x)]);
  102c13:	8b 47 08             	mov    0x8(%rdi),%eax
  102c16:	48 f7 e2             	mul    %rdx
  102c19:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  102c1d:	0f 90 45 d8          	seto   -0x28(%rbp)
  102c21:	8a 45 d8             	mov    -0x28(%rbp),%al
  102c24:	84 c0                	test   %al,%al
  102c26:	75 04                	jne    102c2c <graphics.PixelWriter.pixelAt+0x3c>
  102c28:	eb 00                	jmp    102c2a <graphics.PixelWriter.pixelAt+0x3a>
  102c2a:	eb 22                	jmp    102c4e <graphics.PixelWriter.pixelAt+0x5e>
  102c2c:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102c33:	00 00 00 
  102c36:	be 10 00 00 00       	mov    $0x10,%esi
  102c3b:	31 c0                	xor    %eax,%eax
  102c3d:	89 c2                	mov    %eax,%edx
  102c3f:	48 b9 60 08 10 00 00 	movabs $0x100860,%rcx
  102c46:	00 00 00 
  102c49:	e8 c2 f2 ff ff       	callq  101f10 <builtin.default_panic>
  102c4e:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  102c52:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  102c56:	48 01 c8             	add    %rcx,%rax
  102c59:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  102c5d:	0f 92 45 e8          	setb   -0x18(%rbp)
  102c61:	8a 45 e8             	mov    -0x18(%rbp),%al
  102c64:	84 c0                	test   %al,%al
  102c66:	75 04                	jne    102c6c <graphics.PixelWriter.pixelAt+0x7c>
  102c68:	eb 00                	jmp    102c6a <graphics.PixelWriter.pixelAt+0x7a>
  102c6a:	eb 22                	jmp    102c8e <graphics.PixelWriter.pixelAt+0x9e>
  102c6c:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102c73:	00 00 00 
  102c76:	be 10 00 00 00       	mov    $0x10,%esi
  102c7b:	31 c0                	xor    %eax,%eax
  102c7d:	89 c2                	mov    %eax,%edx
  102c7f:	48 b9 70 08 10 00 00 	movabs $0x100870,%rcx
  102c86:	00 00 00 
  102c89:	e8 82 f2 ff ff       	callq  101f10 <builtin.default_panic>
  102c8e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  102c92:	b9 04 00 00 00       	mov    $0x4,%ecx
  102c97:	48 f7 e1             	mul    %rcx
  102c9a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  102c9e:	0f 90 45 f8          	seto   -0x8(%rbp)
  102ca2:	8a 45 f8             	mov    -0x8(%rbp),%al
  102ca5:	84 c0                	test   %al,%al
  102ca7:	75 04                	jne    102cad <graphics.PixelWriter.pixelAt+0xbd>
  102ca9:	eb 00                	jmp    102cab <graphics.PixelWriter.pixelAt+0xbb>
  102cab:	eb 22                	jmp    102ccf <graphics.PixelWriter.pixelAt+0xdf>
  102cad:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  102cb4:	00 00 00 
  102cb7:	be 10 00 00 00       	mov    $0x10,%esi
  102cbc:	31 c0                	xor    %eax,%eax
  102cbe:	89 c2                	mov    %eax,%edx
  102cc0:	48 b9 80 08 10 00 00 	movabs $0x100880,%rcx
  102cc7:	00 00 00 
  102cca:	e8 41 f2 ff ff       	callq  101f10 <builtin.default_panic>
  102ccf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  102cd3:	48 03 45 c0          	add    -0x40(%rbp),%rax
  102cd7:	48 83 c4 60          	add    $0x60,%rsp
  102cdb:	5d                   	pop    %rbp
  102cdc:	c3                   	retq   
  102cdd:	0f 1f 00             	nopl   (%rax)

0000000000102ce0 <debug.panicExtra__anon_1449>:
) noreturn {
  102ce0:	55                   	push   %rbp
  102ce1:	48 89 e5             	mov    %rsp,%rbp
  102ce4:	b8 c0 11 00 00       	mov    $0x11c0,%eax
  102ce9:	e8 e2 40 00 00       	callq  106dd0 <__zig_probe_stack>
  102cee:	48 29 c4             	sub    %rax,%rsp
  102cf1:	48 89 95 68 ee ff ff 	mov    %rdx,-0x1198(%rbp)
  102cf8:	48 89 b5 70 ee ff ff 	mov    %rsi,-0x1190(%rbp)
  102cff:	48 89 bd 78 ee ff ff 	mov    %rdi,-0x1188(%rbp)
  102d06:	48 89 bd 90 ee ff ff 	mov    %rdi,-0x1170(%rbp)
  102d0d:	48 8d 85 98 ee ff ff 	lea    -0x1168(%rbp),%rax
  102d14:	48 89 85 a0 ef ff ff 	mov    %rax,-0x1060(%rbp)
  102d1b:	48 c7 85 a8 ef ff ff 	movq   $0x20,-0x1058(%rbp)
  102d22:	20 00 00 00 
  102d26:	48 c7 85 98 ef ff ff 	movq   $0x0,-0x1068(%rbp)
  102d2d:	00 00 00 00 
  102d31:	48 8b 85 98 ef ff ff 	mov    -0x1068(%rbp),%rax
  102d38:	48 89 85 80 ee ff ff 	mov    %rax,-0x1180(%rbp)
    const trunc_msg = "(msg truncated)";
  102d3f:	48 b8 cb 05 10 00 00 	movabs $0x1005cb,%rax
  102d46:	00 00 00 
  102d49:	48 89 85 b0 ef ff ff 	mov    %rax,-0x1050(%rbp)
    var buf: [size + trunc_msg.len]u8 = undefined;
  102d50:	48 8d bd b9 ef ff ff 	lea    -0x1047(%rbp),%rdi
  102d57:	be aa 00 00 00       	mov    $0xaa,%esi
  102d5c:	ba 0f 10 00 00       	mov    $0x100f,%edx
  102d61:	e8 2a 42 00 00       	callq  106f90 <memset>
    const msg = std.fmt.bufPrint(buf[0..size], format, args) catch |err| switch (err) {
  102d66:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  102d6d:	48 89 85 88 ee ff ff 	mov    %rax,-0x1178(%rbp)
  102d74:	b0 01                	mov    $0x1,%al
  102d76:	a8 01                	test   $0x1,%al
  102d78:	75 02                	jne    102d7c <debug.panicExtra__anon_1449+0x9c>
  102d7a:	eb 02                	jmp    102d7e <debug.panicExtra__anon_1449+0x9e>
  102d7c:	eb 0e                	jmp    102d8c <debug.panicExtra__anon_1449+0xac>
  102d7e:	31 c0                	xor    %eax,%eax
  102d80:	89 c7                	mov    %eax,%edi
  102d82:	be 00 10 00 00       	mov    $0x1000,%esi
  102d87:	e8 34 fc ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  102d8c:	4c 8b 85 68 ee ff ff 	mov    -0x1198(%rbp),%r8
  102d93:	48 8b 95 88 ee ff ff 	mov    -0x1178(%rbp),%rdx
  102d9a:	b9 00 10 00 00       	mov    $0x1000,%ecx
  102d9f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  102da3:	48 8d b5 98 ef ff ff 	lea    -0x1068(%rbp),%rsi
  102daa:	e8 a1 06 00 00       	callq  103450 <fmt.bufPrint__anon_1636>
  102daf:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%rbp)
  102db4:	75 1b                	jne    102dd1 <debug.panicExtra__anon_1449+0xf1>
  102db6:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  102dba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  102dbe:	48 89 8d 58 ee ff ff 	mov    %rcx,-0x11a8(%rbp)
  102dc5:	48 89 85 60 ee ff ff 	mov    %rax,-0x11a0(%rbp)
  102dcc:	e9 b3 00 00 00       	jmpq   102e84 <debug.panicExtra__anon_1449+0x1a4>
  102dd1:	66 8b 45 d8          	mov    -0x28(%rbp),%ax
  102dd5:	66 83 e8 01          	sub    $0x1,%ax
  102dd9:	74 24                	je     102dff <debug.panicExtra__anon_1449+0x11f>
  102ddb:	eb 00                	jmp    102ddd <debug.panicExtra__anon_1449+0xfd>
  102ddd:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  102de4:	00 00 00 
  102de7:	be 17 00 00 00       	mov    $0x17,%esi
  102dec:	31 c0                	xor    %eax,%eax
  102dee:	89 c2                	mov    %eax,%edx
  102df0:	48 b9 90 08 10 00 00 	movabs $0x100890,%rcx
  102df7:	00 00 00 
  102dfa:	e8 11 f1 ff ff       	callq  101f10 <builtin.default_panic>
            std.mem.copy(u8, buf[size..], trunc_msg);
  102dff:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  102e06:	48 05 00 10 00 00    	add    $0x1000,%rax
  102e0c:	48 89 85 50 ee ff ff 	mov    %rax,-0x11b0(%rbp)
  102e13:	b0 01                	mov    $0x1,%al
  102e15:	a8 01                	test   $0x1,%al
  102e17:	75 02                	jne    102e1b <debug.panicExtra__anon_1449+0x13b>
  102e19:	eb 02                	jmp    102e1d <debug.panicExtra__anon_1449+0x13d>
  102e1b:	eb 0f                	jmp    102e2c <debug.panicExtra__anon_1449+0x14c>
  102e1d:	bf 00 10 00 00       	mov    $0x1000,%edi
  102e22:	be 0f 10 00 00       	mov    $0x100f,%esi
  102e27:	e8 94 fb ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  102e2c:	48 8b bd 50 ee ff ff 	mov    -0x11b0(%rbp),%rdi
  102e33:	be 0f 00 00 00       	mov    $0xf,%esi
  102e38:	48 ba cb 05 10 00 00 	movabs $0x1005cb,%rdx
  102e3f:	00 00 00 
  102e42:	b9 0f 00 00 00       	mov    $0xf,%ecx
  102e47:	e8 f4 fc ff ff       	callq  102b40 <mem.copy__anon_1447>
  102e4c:	48 8d 85 b9 ef ff ff 	lea    -0x1047(%rbp),%rax
  102e53:	48 89 85 48 ee ff ff 	mov    %rax,-0x11b8(%rbp)
  102e5a:	48 8b 85 80 ee ff ff 	mov    -0x1180(%rbp),%rax
  102e61:	48 8b 8d 48 ee ff ff 	mov    -0x11b8(%rbp),%rcx
    const msg = std.fmt.bufPrint(buf[0..size], format, args) catch |err| switch (err) {
  102e68:	48 89 85 98 ef ff ff 	mov    %rax,-0x1068(%rbp)
  102e6f:	b8 0f 10 00 00       	mov    $0x100f,%eax
  102e74:	48 89 8d 58 ee ff ff 	mov    %rcx,-0x11a8(%rbp)
  102e7b:	48 89 85 60 ee ff ff 	mov    %rax,-0x11a0(%rbp)
  102e82:	eb 00                	jmp    102e84 <debug.panicExtra__anon_1449+0x1a4>
  102e84:	48 8b 8d 70 ee ff ff 	mov    -0x1190(%rbp),%rcx
  102e8b:	48 8b 95 78 ee ff ff 	mov    -0x1188(%rbp),%rdx
  102e92:	48 8b 85 58 ee ff ff 	mov    -0x11a8(%rbp),%rax
  102e99:	48 8b b5 60 ee ff ff 	mov    -0x11a0(%rbp),%rsi
  102ea0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  102ea4:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    std.builtin.panic(msg, trace, ret_addr);
  102ea8:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  102eac:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  102eb0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  102eb4:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  102eb8:	e8 53 f0 ff ff       	callq  101f10 <builtin.default_panic>
  102ebd:	0f 1f 00             	nopl   (%rax)

0000000000102ec0 <fmt.format__anon_1567>:
) !void {
  102ec0:	55                   	push   %rbp
  102ec1:	48 89 e5             	mov    %rsp,%rbp
  102ec4:	48 83 ec 40          	sub    $0x40,%rsp
  102ec8:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  102ecc:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  102ed0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
            try writer.writeAll(fmt[start_index..end_index]);
  102ed4:	48 8b 06             	mov    (%rsi),%rax
  102ed7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  102edb:	b0 01                	mov    $0x1,%al
  102edd:	a8 01                	test   $0x1,%al
  102edf:	75 02                	jne    102ee3 <fmt.format__anon_1567+0x23>
  102ee1:	eb 02                	jmp    102ee5 <fmt.format__anon_1567+0x25>
  102ee3:	eb 0e                	jmp    102ef3 <fmt.format__anon_1567+0x33>
  102ee5:	31 c0                	xor    %eax,%eax
  102ee7:	89 c7                	mov    %eax,%edi
  102ee9:	be 1b 00 00 00       	mov    $0x1b,%esi
  102eee:	e8 cd fa ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  102ef3:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102ef7:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  102efb:	48 ba db 05 10 00 00 	movabs $0x1005db,%rdx
  102f02:	00 00 00 
  102f05:	b9 1b 00 00 00       	mov    $0x1b,%ecx
  102f0a:	e8 21 01 00 00       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  102f0f:	66 89 45 c6          	mov    %ax,-0x3a(%rbp)
  102f13:	66 83 f8 00          	cmp    $0x0,%ax
  102f17:	74 13                	je     102f2c <fmt.format__anon_1567+0x6c>
  102f19:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102f1d:	e8 be 02 00 00       	callq  1031e0 <builtin.returnError>
  102f22:	66 8b 45 c6          	mov    -0x3a(%rbp),%ax
  102f26:	48 83 c4 40          	add    $0x40,%rsp
  102f2a:	5d                   	pop    %rbp
  102f2b:	c3                   	retq   
  102f2c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  102f30:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102f34:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
        const arg_to_print = comptime arg_state.nextArg(arg_pos) orelse
  102f38:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  102f3f:	00 
        try formatType(
  102f40:	48 8b 30             	mov    (%rax),%rsi
            std.options.fmt_max_depth,
  102f43:	48 ba f8 02 10 00 00 	movabs $0x1002f8,%rdx
  102f4a:	00 00 00 
  102f4d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  102f53:	e8 68 03 00 00       	callq  1032c0 <fmt.formatType__anon_1629>
  102f58:	66 89 45 c4          	mov    %ax,-0x3c(%rbp)
  102f5c:	66 83 f8 00          	cmp    $0x0,%ax
  102f60:	74 13                	je     102f75 <fmt.format__anon_1567+0xb5>
  102f62:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
        try formatType(
  102f66:	e8 75 02 00 00       	callq  1031e0 <builtin.returnError>
  102f6b:	66 8b 45 c4          	mov    -0x3c(%rbp),%ax
  102f6f:	48 83 c4 40          	add    $0x40,%rsp
  102f73:	5d                   	pop    %rbp
  102f74:	c3                   	retq   
  102f75:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
            try writer.writeAll(fmt[start_index..end_index]);
  102f79:	48 8b 00             	mov    (%rax),%rax
  102f7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  102f80:	b0 01                	mov    $0x1,%al
  102f82:	a8 01                	test   $0x1,%al
  102f84:	75 02                	jne    102f88 <fmt.format__anon_1567+0xc8>
  102f86:	eb 02                	jmp    102f8a <fmt.format__anon_1567+0xca>
  102f88:	eb 0f                	jmp    102f99 <fmt.format__anon_1567+0xd9>
  102f8a:	bf 1e 00 00 00       	mov    $0x1e,%edi
  102f8f:	be 24 00 00 00       	mov    $0x24,%esi
  102f94:	e8 27 fa ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  102f99:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102f9d:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  102fa1:	48 ba db 05 10 00 00 	movabs $0x1005db,%rdx
  102fa8:	00 00 00 
  102fab:	48 83 c2 1e          	add    $0x1e,%rdx
  102faf:	b9 06 00 00 00       	mov    $0x6,%ecx
  102fb4:	e8 77 00 00 00       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  102fb9:	66 89 45 c2          	mov    %ax,-0x3e(%rbp)
  102fbd:	66 83 f8 00          	cmp    $0x0,%ax
  102fc1:	74 13                	je     102fd6 <fmt.format__anon_1567+0x116>
  102fc3:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102fc7:	e8 14 02 00 00       	callq  1031e0 <builtin.returnError>
  102fcc:	66 8b 45 c2          	mov    -0x3e(%rbp),%ax
  102fd0:	48 83 c4 40          	add    $0x40,%rsp
  102fd4:	5d                   	pop    %rbp
  102fd5:	c3                   	retq   
  102fd6:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  102fda:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  102fde:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
        const arg_to_print = comptime arg_state.nextArg(arg_pos) orelse
  102fe2:	48 c7 45 f8 01 00 00 	movq   $0x1,-0x8(%rbp)
  102fe9:	00 
        try formatType(
  102fea:	48 8b 70 08          	mov    0x8(%rax),%rsi
            std.options.fmt_max_depth,
  102fee:	48 ba 88 03 10 00 00 	movabs $0x100388,%rdx
  102ff5:	00 00 00 
  102ff8:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  102ffe:	e8 bd 02 00 00       	callq  1032c0 <fmt.formatType__anon_1629>
  103003:	66 89 45 c0          	mov    %ax,-0x40(%rbp)
  103007:	66 83 f8 00          	cmp    $0x0,%ax
  10300b:	74 13                	je     103020 <fmt.format__anon_1567+0x160>
  10300d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
        try formatType(
  103011:	e8 ca 01 00 00       	callq  1031e0 <builtin.returnError>
  103016:	66 8b 45 c0          	mov    -0x40(%rbp),%ax
  10301a:	48 83 c4 40          	add    $0x40,%rsp
  10301e:	5d                   	pop    %rbp
  10301f:	c3                   	retq   
    if (comptime arg_state.hasUnusedArgs()) {
  103020:	31 c0                	xor    %eax,%eax
  103022:	48 83 c4 40          	add    $0x40,%rsp
  103026:	5d                   	pop    %rbp
  103027:	c3                   	retq   
  103028:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10302f:	00 

0000000000103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>:

        pub fn write(self: Self, bytes: []const u8) Error!usize {
            return writeFn(self.context, bytes);
        }

        pub fn writeAll(self: Self, bytes: []const u8) Error!void {
  103030:	55                   	push   %rbp
  103031:	48 89 e5             	mov    %rsp,%rbp
  103034:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  10303b:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
  10303f:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
  103043:	48 89 c8             	mov    %rcx,%rax
  103046:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  10304a:	48 89 d0             	mov    %rdx,%rax
  10304d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  103051:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  103055:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
            var index: usize = 0;
  103059:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  103060:	00 
  103061:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
            while (index != bytes.len) {
  103065:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  103069:	48 39 c8             	cmp    %rcx,%rax
  10306c:	74 56                	je     1030c4 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x94>
  10306e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  103072:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  103076:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
                index += try self.write(bytes[index..]);
  10307a:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  10307e:	48 89 b5 68 ff ff ff 	mov    %rsi,-0x98(%rbp)
  103085:	48 8b 12             	mov    (%rdx),%rdx
  103088:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
  10308c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  103090:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  103094:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  103098:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  10309c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  1030a0:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  1030a7:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  1030ab:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1030af:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
  1030b6:	48 01 c2             	add    %rax,%rdx
  1030b9:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  1030bd:	48 39 c8             	cmp    %rcx,%rax
  1030c0:	76 07                	jbe    1030c9 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x99>
  1030c2:	eb 07                	jmp    1030cb <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x9b>
  1030c4:	e9 05 01 00 00       	jmpq   1031ce <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x19e>
  1030c9:	eb 13                	jmp    1030de <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0xae>
  1030cb:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  1030d2:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  1030d9:	e8 e2 f8 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1030de:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  1030e5:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  1030ec:	48 89 c1             	mov    %rax,%rcx
  1030ef:	48 29 d1             	sub    %rdx,%rcx
  1030f2:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  1030f9:	48 39 c0             	cmp    %rax,%rax
  1030fc:	77 02                	ja     103100 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0xd0>
  1030fe:	eb 0f                	jmp    10310f <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0xdf>
  103100:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  103107:	48 89 f7             	mov    %rsi,%rdi
  10310a:	e8 e1 ec ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  10310f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  103116:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  10311d:	48 39 c8             	cmp    %rcx,%rax
  103120:	77 02                	ja     103124 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0xf4>
  103122:	eb 13                	jmp    103137 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x107>
  103124:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  10312b:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  103132:	e8 b9 ec ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103137:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  10313b:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  10313f:	4c 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%r8
  103146:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  10314a:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
  10314e:	e8 bd 08 00 00       	callq  103a10 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).write>
  103153:	66 83 7d e8 00       	cmpw   $0x0,-0x18(%rbp)
  103158:	74 24                	je     10317e <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x14e>
  10315a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10315e:	66 8b 45 e8          	mov    -0x18(%rbp),%ax
  103162:	66 89 85 5e ff ff ff 	mov    %ax,-0xa2(%rbp)
  103169:	e8 72 00 00 00       	callq  1031e0 <builtin.returnError>
  10316e:	66 8b 85 5e ff ff ff 	mov    -0xa2(%rbp),%ax
  103175:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  10317c:	5d                   	pop    %rbp
  10317d:	c3                   	retq   
  10317e:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  103185:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  103189:	48 01 c8             	add    %rcx,%rax
  10318c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  103190:	0f 92 45 f8          	setb   -0x8(%rbp)
  103194:	8a 45 f8             	mov    -0x8(%rbp),%al
  103197:	84 c0                	test   %al,%al
  103199:	75 04                	jne    10319f <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x16f>
  10319b:	eb 00                	jmp    10319d <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x16d>
  10319d:	eb 22                	jmp    1031c1 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x191>
  10319f:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1031a6:	00 00 00 
  1031a9:	be 10 00 00 00       	mov    $0x10,%esi
  1031ae:	31 c0                	xor    %eax,%eax
  1031b0:	89 c2                	mov    %eax,%edx
  1031b2:	48 b9 10 09 10 00 00 	movabs $0x100910,%rcx
  1031b9:	00 00 00 
  1031bc:	e8 4f ed ff ff       	callq  101f10 <builtin.default_panic>
  1031c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1031c5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  1031c9:	e9 93 fe ff ff       	jmpq   103061 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll+0x31>
  1031ce:	31 c0                	xor    %eax,%eax
  1031d0:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  1031d7:	5d                   	pop    %rbp
  1031d8:	c3                   	retq   
  1031d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000001031e0 <builtin.returnError>:
    pub const unwrap_error = "attempt to unwrap error";
    pub const index_out_of_bounds = "index out of bounds";
    pub const start_index_greater_than_end = "start index is larger than end index";
};

pub noinline fn returnError(st: *StackTrace) void {
  1031e0:	55                   	push   %rbp
  1031e1:	48 89 e5             	mov    %rsp,%rbp
  1031e4:	48 83 ec 70          	sub    $0x70,%rsp
  1031e8:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  1031ec:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    @setCold(true);
    @setRuntimeSafety(false);
    addErrRetTraceAddr(st, @returnAddress());
  1031f0:	48 8b 45 08          	mov    0x8(%rbp),%rax
  1031f4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  1031f8:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  1031fc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
}

pub inline fn addErrRetTraceAddr(st: *StackTrace, addr: usize) void {
    if (st.index < st.instruction_addresses.len)
  103200:	48 8b 07             	mov    (%rdi),%rax
  103203:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  103207:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  10320b:	48 39 c8             	cmp    %rcx,%rax
  10320e:	73 2a                	jae    10323a <builtin.returnError+0x5a>
  103210:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
        st.instruction_addresses[st.index] = addr;
  103214:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  103218:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  10321c:	48 8b 00             	mov    (%rax),%rax
  10321f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  103223:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  103227:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  10322b:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  10322f:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  103233:	48 39 c8             	cmp    %rcx,%rax
  103236:	72 04                	jb     10323c <builtin.returnError+0x5c>
  103238:	eb 04                	jmp    10323e <builtin.returnError+0x5e>
  10323a:	eb 1f                	jmp    10325b <builtin.returnError+0x7b>
  10323c:	eb 0d                	jmp    10324b <builtin.returnError+0x6b>
  10323e:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  103242:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  103246:	e8 a5 eb ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  10324b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  10324f:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  103253:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  103257:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
  10325b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax

    st.index += 1;
  10325f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  103263:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  103267:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  10326b:	48 8b 00             	mov    (%rax),%rax
  10326e:	48 ff c0             	inc    %rax
  103271:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  103275:	0f 94 45 f8          	sete   -0x8(%rbp)
  103279:	8a 45 f8             	mov    -0x8(%rbp),%al
  10327c:	84 c0                	test   %al,%al
  10327e:	75 04                	jne    103284 <builtin.returnError+0xa4>
  103280:	eb 00                	jmp    103282 <builtin.returnError+0xa2>
  103282:	eb 22                	jmp    1032a6 <builtin.returnError+0xc6>
  103284:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10328b:	00 00 00 
  10328e:	be 10 00 00 00       	mov    $0x10,%esi
  103293:	31 c0                	xor    %eax,%eax
  103295:	89 c2                	mov    %eax,%edx
  103297:	48 b9 20 09 10 00 00 	movabs $0x100920,%rcx
  10329e:	00 00 00 
  1032a1:	e8 6a ec ff ff       	callq  101f10 <builtin.default_panic>
  1032a6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  1032aa:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1032ae:	48 89 08             	mov    %rcx,(%rax)
  1032b1:	48 83 c4 70          	add    $0x70,%rsp
  1032b5:	5d                   	pop    %rbp
  1032b6:	c3                   	retq   
  1032b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  1032be:	00 00 

00000000001032c0 <fmt.formatType__anon_1629>:
) @TypeOf(writer).Error!void {
  1032c0:	55                   	push   %rbp
  1032c1:	48 89 e5             	mov    %rsp,%rbp
  1032c4:	48 83 ec 30          	sub    $0x30,%rsp
  1032c8:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  1032cc:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  1032d0:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
    const actual_fmt = comptime if (std.mem.eql(u8, fmt, ANY))
  1032d4:	48 c7 45 f0 01 00 00 	movq   $0x1,-0x10(%rbp)
  1032db:	00 
  1032dc:	48 c7 45 e8 91 02 10 	movq   $0x100291,-0x18(%rbp)
  1032e3:	00 
            return formatValue(value, actual_fmt, options, writer);
  1032e4:	e8 f7 12 00 00       	callq  1045e0 <fmt.formatValue__anon_1705>
  1032e9:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
  1032ed:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%rbp)
  1032f2:	75 0a                	jne    1032fe <fmt.formatType__anon_1629+0x3e>
  1032f4:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  1032f8:	48 83 c4 30          	add    $0x30,%rsp
  1032fc:	5d                   	pop    %rbp
  1032fd:	c3                   	retq   
  1032fe:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  103302:	e8 d9 fe ff ff       	callq  1031e0 <builtin.returnError>
  103307:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  10330b:	48 83 c4 30          	add    $0x30,%rsp
  10330f:	5d                   	pop    %rbp
  103310:	c3                   	retq   
  103311:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103318:	00 00 00 
  10331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000103320 <io.fixed_buffer_stream.fixedBufferStream__anon_1525>:
            self.pos = 0;
        }
    };
}

pub fn fixedBufferStream(buffer: anytype) FixedBufferStream(Slice(@TypeOf(buffer))) {
  103320:	55                   	push   %rbp
  103321:	48 89 e5             	mov    %rsp,%rbp
  103324:	48 83 ec 10          	sub    $0x10,%rsp
  103328:	48 89 f8             	mov    %rdi,%rax
  10332b:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  10332f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    return .{ .buffer = buffer, .pos = 0 };
  103333:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  103337:	48 89 37             	mov    %rsi,(%rdi)
  10333a:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  103341:	00 
  103342:	48 83 c4 10          	add    $0x10,%rsp
  103346:	5d                   	pop    %rbp
  103347:	c3                   	retq   
  103348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10334f:	00 

0000000000103350 <io.fixed_buffer_stream.FixedBufferStream([]u8).writer>:
        pub fn writer(self: *Self) Writer {
  103350:	55                   	push   %rbp
  103351:	48 89 e5             	mov    %rsp,%rbp
  103354:	50                   	push   %rax
  103355:	48 89 f8             	mov    %rdi,%rax
  103358:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
            return .{ .context = self };
  10335c:	48 89 37             	mov    %rsi,(%rdi)
  10335f:	48 83 c4 08          	add    $0x8,%rsp
  103363:	5d                   	pop    %rbp
  103364:	c3                   	retq   
  103365:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10336c:	00 00 00 
  10336f:	90                   	nop

0000000000103370 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten>:
        pub fn getWritten(self: Self) Buffer {
  103370:	55                   	push   %rbp
  103371:	48 89 e5             	mov    %rsp,%rbp
  103374:	48 83 ec 40          	sub    $0x40,%rsp
            return self.buffer[0..self.pos];
  103378:	48 8b 47 10          	mov    0x10(%rdi),%rax
  10337c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  103380:	0f 10 07             	movups (%rdi),%xmm0
  103383:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
  103387:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  10338b:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  10338f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  103393:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  103397:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10339b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  10339f:	31 c0                	xor    %eax,%eax
  1033a1:	48 39 c8             	cmp    %rcx,%rax
  1033a4:	77 02                	ja     1033a8 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x38>
  1033a6:	eb 0d                	jmp    1033b5 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x45>
  1033a8:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  1033ac:	31 c0                	xor    %eax,%eax
  1033ae:	89 c7                	mov    %eax,%edi
  1033b0:	e8 0b f6 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1033b5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  1033b9:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1033bd:	48 39 c8             	cmp    %rcx,%rax
  1033c0:	77 02                	ja     1033c4 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x54>
  1033c2:	eb 0d                	jmp    1033d1 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x61>
  1033c4:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1033c8:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  1033cc:	e8 1f ea ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1033d1:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  1033d5:	31 c0                	xor    %eax,%eax
  1033d7:	48 39 c8             	cmp    %rcx,%rax
  1033da:	77 02                	ja     1033de <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x6e>
  1033dc:	eb 0d                	jmp    1033eb <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten+0x7b>
  1033de:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  1033e2:	31 c0                	xor    %eax,%eax
  1033e4:	89 c7                	mov    %eax,%edi
  1033e6:	e8 05 ea ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1033eb:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  1033ef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1033f3:	48 83 c4 40          	add    $0x40,%rsp
  1033f7:	5d                   	pop    %rbp
  1033f8:	c3                   	retq   
  1033f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000103400 <debug.assert>:
pub fn assert(ok: bool) void {
  103400:	55                   	push   %rbp
  103401:	48 89 e5             	mov    %rsp,%rbp
  103404:	48 83 ec 10          	sub    $0x10,%rsp
  103408:	40 88 f8             	mov    %dil,%al
  10340b:	88 c1                	mov    %al,%cl
  10340d:	80 e1 01             	and    $0x1,%cl
  103410:	88 4d ff             	mov    %cl,-0x1(%rbp)
    if (!ok) unreachable; // assertion failure
  103413:	34 ff                	xor    $0xff,%al
  103415:	a8 01                	test   $0x1,%al
  103417:	75 02                	jne    10341b <debug.assert+0x1b>
  103419:	eb 22                	jmp    10343d <debug.assert+0x3d>
  10341b:	48 bf 03 06 10 00 00 	movabs $0x100603,%rdi
  103422:	00 00 00 
  103425:	be 18 00 00 00       	mov    $0x18,%esi
  10342a:	31 c0                	xor    %eax,%eax
  10342c:	89 c2                	mov    %eax,%edx
  10342e:	48 b9 30 09 10 00 00 	movabs $0x100930,%rcx
  103435:	00 00 00 
  103438:	e8 d3 ea ff ff       	callq  101f10 <builtin.default_panic>
  10343d:	eb 00                	jmp    10343f <debug.assert+0x3f>
  10343f:	48 83 c4 10          	add    $0x10,%rsp
  103443:	5d                   	pop    %rbp
  103444:	c3                   	retq   
  103445:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10344c:	00 00 00 
  10344f:	90                   	nop

0000000000103450 <fmt.bufPrint__anon_1636>:
pub fn bufPrint(buf: []u8, comptime fmt: []const u8, args: anytype) BufPrintError![]u8 {
  103450:	55                   	push   %rbp
  103451:	48 89 e5             	mov    %rsp,%rbp
  103454:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  10345b:	4c 89 85 78 ff ff ff 	mov    %r8,-0x88(%rbp)
  103462:	48 89 d0             	mov    %rdx,%rax
  103465:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  10346c:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
  103473:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
  10347a:	48 89 ca             	mov    %rcx,%rdx
  10347d:	48 89 c6             	mov    %rax,%rsi
  103480:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  103484:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    var fbs = std.io.fixedBufferStream(buf);
  103488:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  10348c:	e8 8f fe ff ff       	callq  103320 <io.fixed_buffer_stream.fixedBufferStream__anon_1525>
  103491:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  103495:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  103499:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  10349d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  1034a1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  1034a5:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    try format(fbs.writer(), fmt, args);
  1034a9:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  1034ad:	48 8d 75 98          	lea    -0x68(%rbp),%rsi
  1034b1:	e8 9a fe ff ff       	callq  103350 <io.fixed_buffer_stream.FixedBufferStream([]u8).writer>
  1034b6:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  1034bd:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  1034c4:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
  1034c8:	e8 43 2d 00 00       	callq  106210 <fmt.format__anon_1798>
  1034cd:	66 89 45 86          	mov    %ax,-0x7a(%rbp)
  1034d1:	66 83 f8 00          	cmp    $0x0,%ax
  1034d5:	74 42                	je     103519 <fmt.bufPrint__anon_1636+0xc9>
  1034d7:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  1034de:	66 8b 45 86          	mov    -0x7a(%rbp),%ax
  1034e2:	66 89 45 e0          	mov    %ax,-0x20(%rbp)
  1034e6:	e8 f5 fc ff ff       	callq  1031e0 <builtin.returnError>
  1034eb:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
  1034f2:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  1034f9:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  1034fd:	48 89 11             	mov    %rdx,(%rcx)
  103500:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  103504:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  103508:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  10350c:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  103510:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  103517:	5d                   	pop    %rbp
  103518:	c3                   	retq   
  103519:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    return fbs.getWritten();
  10351d:	e8 4e fe ff ff       	callq  103370 <io.fixed_buffer_stream.FixedBufferStream([]u8).getWritten>
  103522:	48 89 c1             	mov    %rax,%rcx
  103525:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  10352c:	66 c7 45 f8 00 00    	movw   $0x0,-0x8(%rbp)
  103532:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  103536:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  10353a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  10353e:	48 89 08             	mov    %rcx,(%rax)
  103541:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  103545:	48 89 48 08          	mov    %rcx,0x8(%rax)
  103549:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  10354d:	48 89 48 10          	mov    %rcx,0x10(%rax)
  103551:	66 83 78 10 00       	cmpw   $0x0,0x10(%rax)
  103556:	75 10                	jne    103568 <fmt.bufPrint__anon_1636+0x118>
  103558:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  10355f:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  103566:	5d                   	pop    %rbp
  103567:	c3                   	retq   
  103568:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  10356f:	e8 6c fc ff ff       	callq  1031e0 <builtin.returnError>
  103574:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  10357b:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  103582:	5d                   	pop    %rbp
  103583:	c3                   	retq   
  103584:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10358b:	00 00 00 
  10358e:	66 90                	xchg   %ax,%ax

0000000000103590 <io.fixed_buffer_stream.FixedBufferStream([]u8).write>:
        pub fn write(self: *Self, bytes: []const u8) WriteError!usize {
  103590:	55                   	push   %rbp
  103591:	48 89 e5             	mov    %rsp,%rbp
  103594:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
  10359b:	4c 89 c0             	mov    %r8,%rax
  10359e:	48 89 95 40 ff ff ff 	mov    %rdx,-0xc0(%rbp)
  1035a5:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
  1035ac:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  1035b3:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
  1035ba:	49 89 c0             	mov    %rax,%r8
  1035bd:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
  1035c4:	48 89 ce             	mov    %rcx,%rsi
  1035c7:	48 89 b5 68 ff ff ff 	mov    %rsi,-0x98(%rbp)
  1035ce:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  1035d5:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  1035d9:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
            if (bytes.len == 0) return 0;
  1035e0:	49 83 f8 00          	cmp    $0x0,%r8
  1035e4:	75 2e                	jne    103614 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x84>
  1035e6:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  1035ed:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  1035f4:	48 8b 14 25 a0 08 10 	mov    0x1008a0,%rdx
  1035fb:	00 
  1035fc:	48 89 11             	mov    %rdx,(%rcx)
  1035ff:	48 8b 14 25 a8 08 10 	mov    0x1008a8,%rdx
  103606:	00 
  103607:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  10360b:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  103612:	5d                   	pop    %rbp
  103613:	c3                   	retq   
  103614:	eb 00                	jmp    103616 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x86>
  103616:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
            if (self.pos >= self.buffer.len) return error.NoSpaceLeft;
  10361d:	48 8b 41 10          	mov    0x10(%rcx),%rax
  103621:	48 8b 11             	mov    (%rcx),%rdx
  103624:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  103628:	48 39 c8             	cmp    %rcx,%rax
  10362b:	72 3a                	jb     103667 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0xd7>
  10362d:	48 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%rdi
  103634:	e8 a7 fb ff ff       	callq  1031e0 <builtin.returnError>
  103639:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  103640:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  103647:	48 8b 14 25 b0 08 10 	mov    0x1008b0,%rdx
  10364e:	00 
  10364f:	48 89 11             	mov    %rdx,(%rcx)
  103652:	48 8b 14 25 b8 08 10 	mov    0x1008b8,%rdx
  103659:	00 
  10365a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  10365e:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  103665:	5d                   	pop    %rbp
  103666:	c3                   	retq   
  103667:	eb 00                	jmp    103669 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0xd9>
  103669:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
  103670:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
            const n = if (self.pos + bytes.len <= self.buffer.len)
  103677:	48 8b 40 10          	mov    0x10(%rax),%rax
  10367b:	48 01 c8             	add    %rcx,%rax
  10367e:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  103682:	0f 92 45 90          	setb   -0x70(%rbp)
  103686:	8a 45 90             	mov    -0x70(%rbp),%al
  103689:	84 c0                	test   %al,%al
  10368b:	75 04                	jne    103691 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x101>
  10368d:	eb 00                	jmp    10368f <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0xff>
  10368f:	eb 22                	jmp    1036b3 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x123>
  103691:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  103698:	00 00 00 
  10369b:	be 10 00 00 00       	mov    $0x10,%esi
  1036a0:	31 c0                	xor    %eax,%eax
  1036a2:	89 c2                	mov    %eax,%edx
  1036a4:	48 b9 c0 08 10 00 00 	movabs $0x1008c0,%rcx
  1036ab:	00 00 00 
  1036ae:	e8 5d e8 ff ff       	callq  101f10 <builtin.default_panic>
  1036b3:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
  1036ba:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  1036be:	48 8b 11             	mov    (%rcx),%rdx
  1036c1:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  1036c5:	48 39 c8             	cmp    %rcx,%rax
  1036c8:	77 10                	ja     1036da <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x14a>
  1036ca:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  1036d1:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
                bytes.len
  1036d8:	eb 52                	jmp    10372c <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x19c>
  1036da:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
                self.buffer.len - self.pos;
  1036e1:	48 8b 41 08          	mov    0x8(%rcx),%rax
  1036e5:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  1036e9:	48 29 c8             	sub    %rcx,%rax
  1036ec:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  1036f0:	0f 92 45 a0          	setb   -0x60(%rbp)
  1036f4:	8a 45 a0             	mov    -0x60(%rbp),%al
  1036f7:	84 c0                	test   %al,%al
  1036f9:	75 04                	jne    1036ff <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x16f>
  1036fb:	eb 00                	jmp    1036fd <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x16d>
  1036fd:	eb 22                	jmp    103721 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x191>
  1036ff:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  103706:	00 00 00 
  103709:	be 10 00 00 00       	mov    $0x10,%esi
  10370e:	31 c0                	xor    %eax,%eax
  103710:	89 c2                	mov    %eax,%edx
  103712:	48 b9 d0 08 10 00 00 	movabs $0x1008d0,%rcx
  103719:	00 00 00 
  10371c:	e8 ef e7 ff ff       	callq  101f10 <builtin.default_panic>
  103721:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  103725:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  10372c:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  103733:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
  10373a:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
  103741:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
            mem.copy(u8, self.buffer[self.pos .. self.pos + n], bytes[0..n]);
  103745:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  103749:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  10374d:	48 89 95 28 ff ff ff 	mov    %rdx,-0xd8(%rbp)
  103754:	48 8b 40 10          	mov    0x10(%rax),%rax
  103758:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  10375f:	48 01 c8             	add    %rcx,%rax
  103762:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  103766:	0f 92 45 c0          	setb   -0x40(%rbp)
  10376a:	8a 45 c0             	mov    -0x40(%rbp),%al
  10376d:	84 c0                	test   %al,%al
  10376f:	75 04                	jne    103775 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x1e5>
  103771:	eb 00                	jmp    103773 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x1e3>
  103773:	eb 22                	jmp    103797 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x207>
  103775:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10377c:	00 00 00 
  10377f:	be 10 00 00 00       	mov    $0x10,%esi
  103784:	31 c0                	xor    %eax,%eax
  103786:	89 c2                	mov    %eax,%edx
  103788:	48 b9 e0 08 10 00 00 	movabs $0x1008e0,%rcx
  10378f:	00 00 00 
  103792:	e8 79 e7 ff ff       	callq  101f10 <builtin.default_panic>
  103797:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  10379e:	48 8b b5 28 ff ff ff 	mov    -0xd8(%rbp),%rsi
  1037a5:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  1037a9:	48 89 8d 08 ff ff ff 	mov    %rcx,-0xf8(%rbp)
  1037b0:	48 8b 16             	mov    (%rsi),%rdx
  1037b3:	48 8b 76 08          	mov    0x8(%rsi),%rsi
  1037b7:	48 89 b5 10 ff ff ff 	mov    %rsi,-0xf0(%rbp)
  1037be:	48 01 c2             	add    %rax,%rdx
  1037c1:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
  1037c8:	48 39 c8             	cmp    %rcx,%rax
  1037cb:	77 02                	ja     1037cf <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x23f>
  1037cd:	eb 13                	jmp    1037e2 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x252>
  1037cf:	48 8b b5 08 ff ff ff 	mov    -0xf8(%rbp),%rsi
  1037d6:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
  1037dd:	e8 de f1 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1037e2:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  1037e9:	48 8b 8d 10 ff ff ff 	mov    -0xf0(%rbp),%rcx
  1037f0:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
  1037f7:	48 89 c2             	mov    %rax,%rdx
  1037fa:	48 29 f2             	sub    %rsi,%rdx
  1037fd:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
  103804:	48 39 c8             	cmp    %rcx,%rax
  103807:	77 02                	ja     10380b <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x27b>
  103809:	eb 13                	jmp    10381e <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x28e>
  10380b:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
  103812:	48 8b bd 08 ff ff ff 	mov    -0xf8(%rbp),%rdi
  103819:	e8 d2 e5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  10381e:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  103825:	48 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%rcx
  10382c:	48 39 c8             	cmp    %rcx,%rax
  10382f:	77 02                	ja     103833 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x2a3>
  103831:	eb 13                	jmp    103846 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x2b6>
  103833:	48 8b b5 08 ff ff ff 	mov    -0xf8(%rbp),%rsi
  10383a:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
  103841:	e8 aa e5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103846:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  10384d:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  103854:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
  10385b:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  103862:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  103869:	48 89 bd e0 fe ff ff 	mov    %rdi,-0x120(%rbp)
  103870:	48 89 b5 e8 fe ff ff 	mov    %rsi,-0x118(%rbp)
  103877:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  10387b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  10387f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  103883:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  10388a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  10388e:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
  103895:	31 c0                	xor    %eax,%eax
  103897:	48 39 c8             	cmp    %rcx,%rax
  10389a:	77 02                	ja     10389e <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x30e>
  10389c:	eb 10                	jmp    1038ae <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x31e>
  10389e:	48 8b b5 20 ff ff ff 	mov    -0xe0(%rbp),%rsi
  1038a5:	31 c0                	xor    %eax,%eax
  1038a7:	89 c7                	mov    %eax,%edi
  1038a9:	e8 12 f1 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1038ae:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  1038b5:	48 8b 8d f8 fe ff ff 	mov    -0x108(%rbp),%rcx
  1038bc:	48 39 c8             	cmp    %rcx,%rax
  1038bf:	77 02                	ja     1038c3 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x333>
  1038c1:	eb 13                	jmp    1038d6 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x346>
  1038c3:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
  1038ca:	48 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%rdi
  1038d1:	e8 1a e5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1038d6:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  1038dd:	31 c0                	xor    %eax,%eax
  1038df:	48 39 c8             	cmp    %rcx,%rax
  1038e2:	77 02                	ja     1038e6 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x356>
  1038e4:	eb 10                	jmp    1038f6 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x366>
  1038e6:	48 8b b5 20 ff ff ff 	mov    -0xe0(%rbp),%rsi
  1038ed:	31 c0                	xor    %eax,%eax
  1038ef:	89 c7                	mov    %eax,%edi
  1038f1:	e8 fa e4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1038f6:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  1038fd:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
  103904:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
  10390b:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
  103912:	e8 29 f2 ff ff       	callq  102b40 <mem.copy__anon_1447>
  103917:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  10391e:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
            self.pos += n;
  103925:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  103929:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  10392d:	48 89 c2             	mov    %rax,%rdx
  103930:	48 83 c2 10          	add    $0x10,%rdx
  103934:	48 89 95 d8 fe ff ff 	mov    %rdx,-0x128(%rbp)
  10393b:	48 8b 40 10          	mov    0x10(%rax),%rax
  10393f:	48 01 c8             	add    %rcx,%rax
  103942:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  103946:	0f 92 45 e8          	setb   -0x18(%rbp)
  10394a:	8a 45 e8             	mov    -0x18(%rbp),%al
  10394d:	84 c0                	test   %al,%al
  10394f:	75 04                	jne    103955 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x3c5>
  103951:	eb 00                	jmp    103953 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x3c3>
  103953:	eb 22                	jmp    103977 <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x3e7>
  103955:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10395c:	00 00 00 
  10395f:	be 10 00 00 00       	mov    $0x10,%esi
  103964:	31 c0                	xor    %eax,%eax
  103966:	89 c2                	mov    %eax,%edx
  103968:	48 b9 f0 08 10 00 00 	movabs $0x1008f0,%rcx
  10396f:	00 00 00 
  103972:	e8 99 e5 ff ff       	callq  101f10 <builtin.default_panic>
  103977:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  10397e:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
  103985:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  103989:	48 89 11             	mov    %rdx,(%rcx)
            if (n == 0) return error.NoSpaceLeft;
  10398c:	48 83 f8 00          	cmp    $0x0,%rax
  103990:	75 3a                	jne    1039cc <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x43c>
  103992:	48 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%rdi
  103999:	e8 42 f8 ff ff       	callq  1031e0 <builtin.returnError>
  10399e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  1039a5:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  1039ac:	48 8b 14 25 00 09 10 	mov    0x100900,%rdx
  1039b3:	00 
  1039b4:	48 89 11             	mov    %rdx,(%rcx)
  1039b7:	48 8b 14 25 08 09 10 	mov    0x100908,%rdx
  1039be:	00 
  1039bf:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  1039c3:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  1039ca:	5d                   	pop    %rbp
  1039cb:	c3                   	retq   
  1039cc:	eb 00                	jmp    1039ce <io.fixed_buffer_stream.FixedBufferStream([]u8).write+0x43e>
  1039ce:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  1039d5:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  1039dc:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
            return n;
  1039e3:	66 c7 45 f8 00 00    	movw   $0x0,-0x8(%rbp)
  1039e9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  1039ed:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1039f1:	48 89 11             	mov    %rdx,(%rcx)
  1039f4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  1039f8:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  1039fc:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  103a03:	5d                   	pop    %rbp
  103a04:	c3                   	retq   
  103a05:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103a0c:	00 00 00 
  103a0f:	90                   	nop

0000000000103a10 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).write>:
        pub fn write(self: Self, bytes: []const u8) Error!usize {
  103a10:	55                   	push   %rbp
  103a11:	48 89 e5             	mov    %rsp,%rbp
  103a14:	48 83 ec 40          	sub    $0x40,%rsp
  103a18:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  103a1c:	48 89 c8             	mov    %rcx,%rax
  103a1f:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  103a23:	48 89 f9             	mov    %rdi,%rcx
  103a26:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  103a2a:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  103a2e:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  103a32:	49 89 f8             	mov    %rdi,%r8
  103a35:	48 89 c1             	mov    %rax,%rcx
  103a38:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  103a3c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
            return writeFn(self.context, bytes);
  103a40:	48 8b 12             	mov    (%rdx),%rdx
  103a43:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  103a47:	e8 44 fb ff ff       	callq  103590 <io.fixed_buffer_stream.FixedBufferStream([]u8).write>
  103a4c:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  103a50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  103a54:	48 89 07             	mov    %rax,(%rdi)
  103a57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  103a5b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  103a5f:	66 83 7f 08 00       	cmpw   $0x0,0x8(%rdi)
  103a64:	75 0a                	jne    103a70 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).write+0x60>
  103a66:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  103a6a:	48 83 c4 40          	add    $0x40,%rsp
  103a6e:	5d                   	pop    %rbp
  103a6f:	c3                   	retq   
  103a70:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  103a74:	e8 67 f7 ff ff       	callq  1031e0 <builtin.returnError>
  103a79:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  103a7d:	48 83 c4 40          	add    $0x40,%rsp
  103a81:	5d                   	pop    %rbp
  103a82:	c3                   	retq   
  103a83:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  103a8a:	00 00 00 
  103a8d:	0f 1f 00             	nopl   (%rax)

0000000000103a90 <fmt.Parser.specifier>:
    fn specifier(self: *@This()) !Specifier {
  103a90:	55                   	push   %rbp
  103a91:	48 89 e5             	mov    %rsp,%rbp
  103a94:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  103a9b:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
  103a9f:	48 89 75 98          	mov    %rsi,-0x68(%rbp)
  103aa3:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
  103aa7:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  103aab:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
        if (self.maybe('[')) {
  103aaf:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  103ab3:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  103ab7:	be 5b 00 00 00       	mov    $0x5b,%esi
  103abc:	e8 9f 01 00 00       	callq  103c60 <fmt.Parser.maybe>
  103ac1:	a8 01                	test   $0x1,%al
  103ac3:	75 02                	jne    103ac7 <fmt.Parser.specifier+0x37>
  103ac5:	eb 4d                	jmp    103b14 <fmt.Parser.specifier+0x84>
  103ac7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
            const arg_name = self.until(']');
  103acb:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  103acf:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  103ad3:	be 5d 00 00 00       	mov    $0x5d,%esi
  103ad8:	e8 73 02 00 00       	callq  103d50 <fmt.Parser.until>
  103add:	48 89 c1             	mov    %rax,%rcx
  103ae0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  103ae4:	48 89 d6             	mov    %rdx,%rsi
  103ae7:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  103aeb:	48 89 ce             	mov    %rcx,%rsi
  103aee:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
  103af2:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  103af6:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
            if (!self.maybe(']'))
  103afa:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  103afe:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  103b02:	be 5d 00 00 00       	mov    $0x5d,%esi
  103b07:	e8 54 01 00 00       	callq  103c60 <fmt.Parser.maybe>
  103b0c:	34 ff                	xor    $0xff,%al
  103b0e:	a8 01                	test   $0x1,%al
  103b10:	75 07                	jne    103b19 <fmt.Parser.specifier+0x89>
  103b12:	eb 41                	jmp    103b55 <fmt.Parser.specifier+0xc5>
            return Specifier{ .named = arg_name };
  103b14:	e9 a8 00 00 00       	jmpq   103bc1 <fmt.Parser.specifier+0x131>
  103b19:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
                return @field(anyerror, "Expected closing ]");
  103b1d:	48 8b 0c 25 90 0c 10 	mov    0x100c90,%rcx
  103b24:	00 
  103b25:	48 89 08             	mov    %rcx,(%rax)
  103b28:	48 8b 0c 25 98 0c 10 	mov    0x100c98,%rcx
  103b2f:	00 
  103b30:	48 89 48 08          	mov    %rcx,0x8(%rax)
  103b34:	48 8b 0c 25 a0 0c 10 	mov    0x100ca0,%rcx
  103b3b:	00 
  103b3c:	48 89 48 10          	mov    %rcx,0x10(%rax)
  103b40:	48 8b 0c 25 a8 0c 10 	mov    0x100ca8,%rcx
  103b47:	00 
  103b48:	48 89 48 18          	mov    %rcx,0x18(%rax)
  103b4c:	66 83 78 18 00       	cmpw   $0x0,0x18(%rax)
  103b51:	74 04                	je     103b57 <fmt.Parser.specifier+0xc7>
  103b53:	eb 0f                	jmp    103b64 <fmt.Parser.specifier+0xd4>
  103b55:	eb 23                	jmp    103b7a <fmt.Parser.specifier+0xea>
  103b57:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103b5b:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103b62:	5d                   	pop    %rbp
  103b63:	c3                   	retq   
  103b64:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  103b68:	e8 73 f6 ff ff       	callq  1031e0 <builtin.returnError>
  103b6d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103b71:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103b78:	5d                   	pop    %rbp
  103b79:	c3                   	retq   
  103b7a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  103b7e:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  103b82:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
            return Specifier{ .named = arg_name };
  103b86:	66 c7 40 18 00 00    	movw   $0x0,0x18(%rax)
  103b8c:	48 89 50 08          	mov    %rdx,0x8(%rax)
  103b90:	48 89 08             	mov    %rcx,(%rax)
  103b93:	c6 40 10 02          	movb   $0x2,0x10(%rax)
  103b97:	66 83 78 18 00       	cmpw   $0x0,0x18(%rax)
  103b9c:	75 0d                	jne    103bab <fmt.Parser.specifier+0x11b>
  103b9e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103ba2:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103ba9:	5d                   	pop    %rbp
  103baa:	c3                   	retq   
  103bab:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  103baf:	e8 2c f6 ff ff       	callq  1031e0 <builtin.returnError>
  103bb4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103bb8:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103bbf:	5d                   	pop    %rbp
  103bc0:	c3                   	retq   
  103bc1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
        if (self.number()) |i|
  103bc5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  103bc9:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  103bcd:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
  103bd1:	e8 3a 03 00 00       	callq  103f10 <fmt.Parser.number>
  103bd6:	80 7d f0 00          	cmpb   $0x0,-0x10(%rbp)
  103bda:	74 22                	je     103bfe <fmt.Parser.specifier+0x16e>
  103bdc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  103be0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  103be4:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
            return Specifier{ .number = i };
  103be8:	66 c7 40 18 00 00    	movw   $0x0,0x18(%rax)
  103bee:	48 89 08             	mov    %rcx,(%rax)
  103bf1:	c6 40 10 01          	movb   $0x1,0x10(%rax)
  103bf5:	66 83 78 18 00       	cmpw   $0x0,0x18(%rax)
  103bfa:	74 04                	je     103c00 <fmt.Parser.specifier+0x170>
  103bfc:	eb 0f                	jmp    103c0d <fmt.Parser.specifier+0x17d>
  103bfe:	eb 23                	jmp    103c23 <fmt.Parser.specifier+0x193>
  103c00:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103c04:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103c0b:	5d                   	pop    %rbp
  103c0c:	c3                   	retq   
  103c0d:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  103c11:	e8 ca f5 ff ff       	callq  1031e0 <builtin.returnError>
  103c16:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103c1a:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103c21:	5d                   	pop    %rbp
  103c22:	c3                   	retq   
  103c23:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
        return Specifier{ .none = {} };
  103c27:	66 c7 40 18 00 00    	movw   $0x0,0x18(%rax)
  103c2d:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  103c31:	66 83 78 18 00       	cmpw   $0x0,0x18(%rax)
  103c36:	75 0d                	jne    103c45 <fmt.Parser.specifier+0x1b5>
  103c38:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103c3c:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103c43:	5d                   	pop    %rbp
  103c44:	c3                   	retq   
  103c45:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  103c49:	e8 92 f5 ff ff       	callq  1031e0 <builtin.returnError>
  103c4e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  103c52:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  103c59:	5d                   	pop    %rbp
  103c5a:	c3                   	retq   
  103c5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000103c60 <fmt.Parser.maybe>:
    fn maybe(self: *@This(), val: u8) bool {
  103c60:	55                   	push   %rbp
  103c61:	48 89 e5             	mov    %rsp,%rbp
  103c64:	48 83 ec 60          	sub    $0x60,%rsp
  103c68:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  103c6c:	40 88 f0             	mov    %sil,%al
  103c6f:	88 45 d7             	mov    %al,-0x29(%rbp)
  103c72:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  103c76:	88 45 e7             	mov    %al,-0x19(%rbp)
        if (self.pos < self.buf.len and self.buf[self.pos] == val) {
  103c79:	48 8b 47 10          	mov    0x10(%rdi),%rax
  103c7d:	48 8b 0f             	mov    (%rdi),%rcx
  103c80:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  103c84:	48 39 c8             	cmp    %rcx,%rax
  103c87:	73 22                	jae    103cab <fmt.Parser.maybe+0x4b>
  103c89:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  103c8d:	48 8b 08             	mov    (%rax),%rcx
  103c90:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  103c94:	48 8b 48 08          	mov    0x8(%rax),%rcx
  103c98:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  103c9c:	48 8b 40 10          	mov    0x10(%rax),%rax
  103ca0:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  103ca4:	48 39 c8             	cmp    %rcx,%rax
  103ca7:	72 09                	jb     103cb2 <fmt.Parser.maybe+0x52>
  103ca9:	eb 09                	jmp    103cb4 <fmt.Parser.maybe+0x54>
  103cab:	31 c0                	xor    %eax,%eax
  103cad:	88 45 af             	mov    %al,-0x51(%rbp)
  103cb0:	eb 23                	jmp    103cd5 <fmt.Parser.maybe+0x75>
  103cb2:	eb 0d                	jmp    103cc1 <fmt.Parser.maybe+0x61>
  103cb4:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  103cb8:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  103cbc:	e8 2f e1 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103cc1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  103cc5:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  103cc9:	8a 55 d7             	mov    -0x29(%rbp),%dl
  103ccc:	38 14 08             	cmp    %dl,(%rax,%rcx,1)
  103ccf:	0f 94 c0             	sete   %al
  103cd2:	88 45 af             	mov    %al,-0x51(%rbp)
  103cd5:	8a 45 af             	mov    -0x51(%rbp),%al
  103cd8:	a8 01                	test   $0x1,%al
  103cda:	75 02                	jne    103cde <fmt.Parser.maybe+0x7e>
  103cdc:	eb 2f                	jmp    103d0d <fmt.Parser.maybe+0xad>
  103cde:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
            self.pos += 1;
  103ce2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  103ce6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  103cea:	48 89 c1             	mov    %rax,%rcx
  103ced:	48 83 c1 10          	add    $0x10,%rcx
  103cf1:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  103cf5:	48 8b 40 10          	mov    0x10(%rax),%rax
  103cf9:	48 ff c0             	inc    %rax
  103cfc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  103d00:	0f 94 45 f8          	sete   -0x8(%rbp)
  103d04:	8a 45 f8             	mov    -0x8(%rbp),%al
  103d07:	84 c0                	test   %al,%al
  103d09:	74 04                	je     103d0f <fmt.Parser.maybe+0xaf>
  103d0b:	eb 04                	jmp    103d11 <fmt.Parser.maybe+0xb1>
            return true;
  103d0d:	eb 37                	jmp    103d46 <fmt.Parser.maybe+0xe6>
            self.pos += 1;
  103d0f:	eb 22                	jmp    103d33 <fmt.Parser.maybe+0xd3>
  103d11:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  103d18:	00 00 00 
  103d1b:	be 10 00 00 00       	mov    $0x10,%esi
  103d20:	31 c0                	xor    %eax,%eax
  103d22:	89 c2                	mov    %eax,%edx
  103d24:	48 b9 40 09 10 00 00 	movabs $0x100940,%rcx
  103d2b:	00 00 00 
  103d2e:	e8 dd e1 ff ff       	callq  101f10 <builtin.default_panic>
  103d33:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  103d37:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  103d3b:	48 89 08             	mov    %rcx,(%rax)
  103d3e:	b0 01                	mov    $0x1,%al
            return true;
  103d40:	48 83 c4 60          	add    $0x60,%rsp
  103d44:	5d                   	pop    %rbp
  103d45:	c3                   	retq   
  103d46:	31 c0                	xor    %eax,%eax
        return false;
  103d48:	48 83 c4 60          	add    $0x60,%rsp
  103d4c:	5d                   	pop    %rbp
  103d4d:	c3                   	retq   
  103d4e:	66 90                	xchg   %ax,%ax

0000000000103d50 <fmt.Parser.until>:
    fn until(self: *@This(), ch: u8) []const u8 {
  103d50:	55                   	push   %rbp
  103d51:	48 89 e5             	mov    %rsp,%rbp
  103d54:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  103d5b:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  103d5f:	40 88 f0             	mov    %sil,%al
  103d62:	88 45 bf             	mov    %al,-0x41(%rbp)
  103d65:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  103d69:	88 45 d7             	mov    %al,-0x29(%rbp)
        const start = self.pos;
  103d6c:	48 8b 47 10          	mov    0x10(%rdi),%rax
  103d70:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  103d74:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
        if (start >= self.buf.len)
  103d78:	48 8b 0f             	mov    (%rdi),%rcx
  103d7b:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  103d7f:	48 39 c8             	cmp    %rcx,%rax
  103d82:	72 17                	jb     103d9b <fmt.Parser.until+0x4b>
  103d84:	31 c0                	xor    %eax,%eax
  103d86:	89 c2                	mov    %eax,%edx
  103d88:	48 b8 aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaaa,%rax
  103d8f:	aa aa aa 
            return &[_]u8{};
  103d92:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  103d99:	5d                   	pop    %rbp
  103d9a:	c3                   	retq   
  103d9b:	eb 00                	jmp    103d9d <fmt.Parser.until+0x4d>
  103d9d:	eb 00                	jmp    103d9f <fmt.Parser.until+0x4f>
  103d9f:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
        while (self.pos < self.buf.len) : (self.pos += 1) {
  103da3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  103da7:	48 8b 11             	mov    (%rcx),%rdx
  103daa:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  103dae:	48 39 c8             	cmp    %rcx,%rax
  103db1:	73 22                	jae    103dd5 <fmt.Parser.until+0x85>
  103db3:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
            if (self.buf[self.pos] == ch) break;
  103db7:	48 8b 08             	mov    (%rax),%rcx
  103dba:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  103dbe:	48 8b 48 08          	mov    0x8(%rax),%rcx
  103dc2:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  103dc6:	48 8b 40 10          	mov    0x10(%rax),%rax
  103dca:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  103dce:	48 39 c8             	cmp    %rcx,%rax
  103dd1:	72 07                	jb     103dda <fmt.Parser.until+0x8a>
  103dd3:	eb 07                	jmp    103ddc <fmt.Parser.until+0x8c>
        while (self.pos < self.buf.len) : (self.pos += 1) {
  103dd5:	e9 86 00 00 00       	jmpq   103e60 <fmt.Parser.until+0x110>
            if (self.buf[self.pos] == ch) break;
  103dda:	eb 0d                	jmp    103de9 <fmt.Parser.until+0x99>
  103ddc:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  103de0:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  103de4:	e8 07 e0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103de9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  103ded:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  103df1:	8a 55 bf             	mov    -0x41(%rbp),%dl
  103df4:	38 14 08             	cmp    %dl,(%rax,%rcx,1)
  103df7:	75 02                	jne    103dfb <fmt.Parser.until+0xab>
  103df9:	eb 65                	jmp    103e60 <fmt.Parser.until+0x110>
  103dfb:	eb 00                	jmp    103dfd <fmt.Parser.until+0xad>
  103dfd:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        while (self.pos < self.buf.len) : (self.pos += 1) {
  103e01:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  103e05:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  103e09:	48 89 c1             	mov    %rax,%rcx
  103e0c:	48 83 c1 10          	add    $0x10,%rcx
  103e10:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  103e14:	48 8b 40 10          	mov    0x10(%rax),%rax
  103e18:	48 ff c0             	inc    %rax
  103e1b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  103e1f:	0f 94 45 f0          	sete   -0x10(%rbp)
  103e23:	8a 45 f0             	mov    -0x10(%rbp),%al
  103e26:	84 c0                	test   %al,%al
  103e28:	75 04                	jne    103e2e <fmt.Parser.until+0xde>
  103e2a:	eb 00                	jmp    103e2c <fmt.Parser.until+0xdc>
  103e2c:	eb 22                	jmp    103e50 <fmt.Parser.until+0x100>
  103e2e:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  103e35:	00 00 00 
  103e38:	be 10 00 00 00       	mov    $0x10,%esi
  103e3d:	31 c0                	xor    %eax,%eax
  103e3f:	89 c2                	mov    %eax,%edx
  103e41:	48 b9 d0 09 10 00 00 	movabs $0x1009d0,%rcx
  103e48:	00 00 00 
  103e4b:	e8 c0 e0 ff ff       	callq  101f10 <builtin.default_panic>
  103e50:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  103e54:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  103e58:	48 89 08             	mov    %rcx,(%rax)
  103e5b:	e9 3f ff ff ff       	jmpq   103d9f <fmt.Parser.until+0x4f>
  103e60:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  103e64:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
        return self.buf[start..self.pos];
  103e68:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  103e6c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  103e70:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  103e74:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
  103e7b:	48 8b 16             	mov    (%rsi),%rdx
  103e7e:	48 8b 76 08          	mov    0x8(%rsi),%rsi
  103e82:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  103e86:	48 01 c2             	add    %rax,%rdx
  103e89:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  103e8d:	48 39 c8             	cmp    %rcx,%rax
  103e90:	77 02                	ja     103e94 <fmt.Parser.until+0x144>
  103e92:	eb 10                	jmp    103ea4 <fmt.Parser.until+0x154>
  103e94:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  103e9b:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  103e9f:	e8 1c eb ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  103ea4:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  103eab:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  103eaf:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  103eb3:	48 89 c2             	mov    %rax,%rdx
  103eb6:	48 29 f2             	sub    %rsi,%rdx
  103eb9:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  103ec0:	48 39 c8             	cmp    %rcx,%rax
  103ec3:	77 02                	ja     103ec7 <fmt.Parser.until+0x177>
  103ec5:	eb 10                	jmp    103ed7 <fmt.Parser.until+0x187>
  103ec7:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
  103ecb:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
  103ed2:	e8 19 df ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103ed7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  103edb:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  103ee2:	48 39 c8             	cmp    %rcx,%rax
  103ee5:	77 02                	ja     103ee9 <fmt.Parser.until+0x199>
  103ee7:	eb 10                	jmp    103ef9 <fmt.Parser.until+0x1a9>
  103ee9:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  103ef0:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  103ef4:	e8 f7 de ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103ef9:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  103f00:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  103f04:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  103f0b:	5d                   	pop    %rbp
  103f0c:	c3                   	retq   
  103f0d:	0f 1f 00             	nopl   (%rax)

0000000000103f10 <fmt.Parser.number>:
    fn number(self: *@This()) ?usize {
  103f10:	55                   	push   %rbp
  103f11:	48 89 e5             	mov    %rsp,%rbp
  103f14:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  103f1b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  103f1f:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  103f23:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
  103f27:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
        var r: ?usize = null;
  103f2b:	48 8b 04 25 50 09 10 	mov    0x100950,%rax
  103f32:	00 
  103f33:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  103f37:	48 8b 04 25 58 09 10 	mov    0x100958,%rax
  103f3e:	00 
  103f3f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  103f43:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
        while (self.pos < self.buf.len) : (self.pos += 1) {
  103f47:	48 8b 41 10          	mov    0x10(%rcx),%rax
  103f4b:	48 8b 11             	mov    (%rcx),%rdx
  103f4e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  103f52:	48 39 c8             	cmp    %rcx,%rax
  103f55:	73 25                	jae    103f7c <fmt.Parser.number+0x6c>
  103f57:	48 8b 45 90          	mov    -0x70(%rbp),%rax
            switch (self.buf[self.pos]) {
  103f5b:	48 8b 08             	mov    (%rax),%rcx
  103f5e:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
  103f65:	48 8b 48 08          	mov    0x8(%rax),%rcx
  103f69:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  103f6d:	48 8b 40 10          	mov    0x10(%rax),%rax
  103f71:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  103f75:	48 39 c8             	cmp    %rcx,%rax
  103f78:	72 07                	jb     103f81 <fmt.Parser.number+0x71>
  103f7a:	eb 07                	jmp    103f83 <fmt.Parser.number+0x73>
        while (self.pos < self.buf.len) : (self.pos += 1) {
  103f7c:	e9 70 02 00 00       	jmpq   1041f1 <fmt.Parser.number+0x2e1>
            switch (self.buf[self.pos]) {
  103f81:	eb 0d                	jmp    103f90 <fmt.Parser.number+0x80>
  103f83:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
  103f87:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  103f8b:	e8 60 de ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  103f90:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  103f97:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  103f9b:	8a 04 08             	mov    (%rax,%rcx,1),%al
  103f9e:	88 85 77 ff ff ff    	mov    %al,-0x89(%rbp)
  103fa4:	8a 8d 77 ff ff ff    	mov    -0x89(%rbp),%cl
  103faa:	80 f9 30             	cmp    $0x30,%cl
  103fad:	0f 93 c0             	setae  %al
  103fb0:	80 f9 39             	cmp    $0x39,%cl
  103fb3:	0f 96 c1             	setbe  %cl
  103fb6:	20 c8                	and    %cl,%al
  103fb8:	a8 01                	test   $0x1,%al
  103fba:	75 02                	jne    103fbe <fmt.Parser.number+0xae>
  103fbc:	eb 0f                	jmp    103fcd <fmt.Parser.number+0xbd>
                    if (r == null) r = 0;
  103fbe:	80 7d b8 00          	cmpb   $0x0,-0x48(%rbp)
  103fc2:	0f 95 c0             	setne  %al
  103fc5:	34 ff                	xor    $0xff,%al
  103fc7:	a8 01                	test   $0x1,%al
  103fc9:	75 07                	jne    103fd2 <fmt.Parser.number+0xc2>
  103fcb:	eb 1f                	jmp    103fec <fmt.Parser.number+0xdc>
                    r.? += self.buf[self.pos] - '0';
  103fcd:	e9 1f 02 00 00       	jmpq   1041f1 <fmt.Parser.number+0x2e1>
                    if (r == null) r = 0;
  103fd2:	48 8b 04 25 60 09 10 	mov    0x100960,%rax
  103fd9:	00 
  103fda:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  103fde:	48 8b 04 25 68 09 10 	mov    0x100968,%rax
  103fe5:	00 
  103fe6:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  103fea:	eb 02                	jmp    103fee <fmt.Parser.number+0xde>
  103fec:	eb 00                	jmp    103fee <fmt.Parser.number+0xde>
                    r.? *= 10;
  103fee:	80 7d b8 00          	cmpb   $0x0,-0x48(%rbp)
  103ff2:	74 02                	je     103ff6 <fmt.Parser.number+0xe6>
  103ff4:	eb 22                	jmp    104018 <fmt.Parser.number+0x108>
  103ff6:	48 bf 1c 06 10 00 00 	movabs $0x10061c,%rdi
  103ffd:	00 00 00 
  104000:	be 19 00 00 00       	mov    $0x19,%esi
  104005:	31 c0                	xor    %eax,%eax
  104007:	89 c2                	mov    %eax,%edx
  104009:	48 b9 70 09 10 00 00 	movabs $0x100970,%rcx
  104010:	00 00 00 
  104013:	e8 f8 de ff ff       	callq  101f10 <builtin.default_panic>
  104018:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  10401c:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  104023:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  104027:	b9 0a 00 00 00       	mov    $0xa,%ecx
  10402c:	48 f7 e1             	mul    %rcx
  10402f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  104033:	0f 90 45 c8          	seto   -0x38(%rbp)
  104037:	8a 45 c8             	mov    -0x38(%rbp),%al
  10403a:	84 c0                	test   %al,%al
  10403c:	75 04                	jne    104042 <fmt.Parser.number+0x132>
  10403e:	eb 00                	jmp    104040 <fmt.Parser.number+0x130>
  104040:	eb 22                	jmp    104064 <fmt.Parser.number+0x154>
  104042:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104049:	00 00 00 
  10404c:	be 10 00 00 00       	mov    $0x10,%esi
  104051:	31 c0                	xor    %eax,%eax
  104053:	89 c2                	mov    %eax,%edx
  104055:	48 b9 80 09 10 00 00 	movabs $0x100980,%rcx
  10405c:	00 00 00 
  10405f:	e8 ac de ff ff       	callq  101f10 <builtin.default_panic>
  104064:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  10406b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  10406f:	48 89 08             	mov    %rcx,(%rax)
                    r.? += self.buf[self.pos] - '0';
  104072:	80 7d b8 00          	cmpb   $0x0,-0x48(%rbp)
  104076:	74 02                	je     10407a <fmt.Parser.number+0x16a>
  104078:	eb 22                	jmp    10409c <fmt.Parser.number+0x18c>
  10407a:	48 bf 1c 06 10 00 00 	movabs $0x10061c,%rdi
  104081:	00 00 00 
  104084:	be 19 00 00 00       	mov    $0x19,%esi
  104089:	31 c0                	xor    %eax,%eax
  10408b:	89 c2                	mov    %eax,%edx
  10408d:	48 b9 90 09 10 00 00 	movabs $0x100990,%rcx
  104094:	00 00 00 
  104097:	e8 74 de ff ff       	callq  101f10 <builtin.default_panic>
  10409c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  1040a0:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
  1040a4:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
  1040ab:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  1040af:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  1040b6:	48 8b 08             	mov    (%rax),%rcx
  1040b9:	48 89 8d 50 ff ff ff 	mov    %rcx,-0xb0(%rbp)
  1040c0:	48 8b 48 08          	mov    0x8(%rax),%rcx
  1040c4:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  1040cb:	48 8b 40 10          	mov    0x10(%rax),%rax
  1040cf:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
  1040d6:	48 39 c8             	cmp    %rcx,%rax
  1040d9:	73 02                	jae    1040dd <fmt.Parser.number+0x1cd>
  1040db:	eb 13                	jmp    1040f0 <fmt.Parser.number+0x1e0>
  1040dd:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  1040e4:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  1040eb:	e8 00 dd ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1040f0:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  1040f7:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
  1040fe:	8a 04 08             	mov    (%rax,%rcx,1),%al
  104101:	2c 30                	sub    $0x30,%al
  104103:	88 45 d0             	mov    %al,-0x30(%rbp)
  104106:	0f 92 45 d1          	setb   -0x2f(%rbp)
  10410a:	8a 45 d1             	mov    -0x2f(%rbp),%al
  10410d:	84 c0                	test   %al,%al
  10410f:	75 04                	jne    104115 <fmt.Parser.number+0x205>
  104111:	eb 00                	jmp    104113 <fmt.Parser.number+0x203>
  104113:	eb 22                	jmp    104137 <fmt.Parser.number+0x227>
  104115:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10411c:	00 00 00 
  10411f:	be 10 00 00 00       	mov    $0x10,%esi
  104124:	31 c0                	xor    %eax,%eax
  104126:	89 c2                	mov    %eax,%edx
  104128:	48 b9 a0 09 10 00 00 	movabs $0x1009a0,%rcx
  10412f:	00 00 00 
  104132:	e8 d9 dd ff ff       	callq  101f10 <builtin.default_panic>
  104137:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  10413e:	0f b6 4d d0          	movzbl -0x30(%rbp),%ecx
  104142:	48 01 c8             	add    %rcx,%rax
  104145:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  104149:	0f 92 45 e0          	setb   -0x20(%rbp)
  10414d:	8a 45 e0             	mov    -0x20(%rbp),%al
  104150:	84 c0                	test   %al,%al
  104152:	75 04                	jne    104158 <fmt.Parser.number+0x248>
  104154:	eb 00                	jmp    104156 <fmt.Parser.number+0x246>
  104156:	eb 22                	jmp    10417a <fmt.Parser.number+0x26a>
  104158:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10415f:	00 00 00 
  104162:	be 10 00 00 00       	mov    $0x10,%esi
  104167:	31 c0                	xor    %eax,%eax
  104169:	89 c2                	mov    %eax,%edx
  10416b:	48 b9 b0 09 10 00 00 	movabs $0x1009b0,%rcx
  104172:	00 00 00 
  104175:	e8 96 dd ff ff       	callq  101f10 <builtin.default_panic>
  10417a:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  104181:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  104185:	48 89 08             	mov    %rcx,(%rax)
  104188:	48 8b 45 90          	mov    -0x70(%rbp),%rax
        while (self.pos < self.buf.len) : (self.pos += 1) {
  10418c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  104190:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  104194:	48 89 c1             	mov    %rax,%rcx
  104197:	48 83 c1 10          	add    $0x10,%rcx
  10419b:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
  1041a2:	48 8b 40 10          	mov    0x10(%rax),%rax
  1041a6:	48 ff c0             	inc    %rax
  1041a9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  1041ad:	0f 94 45 f8          	sete   -0x8(%rbp)
  1041b1:	8a 45 f8             	mov    -0x8(%rbp),%al
  1041b4:	84 c0                	test   %al,%al
  1041b6:	75 04                	jne    1041bc <fmt.Parser.number+0x2ac>
  1041b8:	eb 00                	jmp    1041ba <fmt.Parser.number+0x2aa>
  1041ba:	eb 22                	jmp    1041de <fmt.Parser.number+0x2ce>
  1041bc:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1041c3:	00 00 00 
  1041c6:	be 10 00 00 00       	mov    $0x10,%esi
  1041cb:	31 c0                	xor    %eax,%eax
  1041cd:	89 c2                	mov    %eax,%edx
  1041cf:	48 b9 c0 09 10 00 00 	movabs $0x1009c0,%rcx
  1041d6:	00 00 00 
  1041d9:	e8 32 dd ff ff       	callq  101f10 <builtin.default_panic>
  1041de:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  1041e5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1041e9:	48 89 08             	mov    %rcx,(%rax)
  1041ec:	e9 52 fd ff ff       	jmpq   103f43 <fmt.Parser.number+0x33>
  1041f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  1041f5:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
        return r;
  1041f9:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  1041fd:	48 89 11             	mov    %rdx,(%rcx)
  104200:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  104204:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  104208:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  10420f:	5d                   	pop    %rbp
  104210:	c3                   	retq   
  104211:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  104218:	00 00 00 
  10421b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000104220 <fmt.Parser.char>:
    fn char(self: *@This()) ?u8 {
  104220:	55                   	push   %rbp
  104221:	48 89 e5             	mov    %rsp,%rbp
  104224:	48 83 ec 70          	sub    $0x70,%rsp
  104228:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  10422c:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  104230:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  104234:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
        if (self.pos < self.buf.len) {
  104238:	48 8b 46 10          	mov    0x10(%rsi),%rax
  10423c:	48 8b 0e             	mov    (%rsi),%rcx
  10423f:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  104243:	48 39 c8             	cmp    %rcx,%rax
  104246:	73 22                	jae    10426a <fmt.Parser.char+0x4a>
  104248:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
            const ch = self.buf[self.pos];
  10424c:	48 8b 08             	mov    (%rax),%rcx
  10424f:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  104253:	48 8b 48 08          	mov    0x8(%rax),%rcx
  104257:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  10425b:	48 8b 40 10          	mov    0x10(%rax),%rax
  10425f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  104263:	48 39 c8             	cmp    %rcx,%rax
  104266:	72 07                	jb     10426f <fmt.Parser.char+0x4f>
  104268:	eb 07                	jmp    104271 <fmt.Parser.char+0x51>
            return ch;
  10426a:	e9 9d 00 00 00       	jmpq   10430c <fmt.Parser.char+0xec>
            const ch = self.buf[self.pos];
  10426f:	eb 0d                	jmp    10427e <fmt.Parser.char+0x5e>
  104271:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  104275:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  104279:	e8 72 db ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  10427e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  104282:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  104286:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  10428a:	8a 0c 11             	mov    (%rcx,%rdx,1),%cl
  10428d:	88 4d 97             	mov    %cl,-0x69(%rbp)
  104290:	88 4d df             	mov    %cl,-0x21(%rbp)
            self.pos += 1;
  104293:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  104297:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  10429b:	48 89 c1             	mov    %rax,%rcx
  10429e:	48 83 c1 10          	add    $0x10,%rcx
  1042a2:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  1042a6:	48 8b 40 10          	mov    0x10(%rax),%rax
  1042aa:	48 ff c0             	inc    %rax
  1042ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1042b1:	0f 94 45 f0          	sete   -0x10(%rbp)
  1042b5:	8a 45 f0             	mov    -0x10(%rbp),%al
  1042b8:	84 c0                	test   %al,%al
  1042ba:	75 04                	jne    1042c0 <fmt.Parser.char+0xa0>
  1042bc:	eb 00                	jmp    1042be <fmt.Parser.char+0x9e>
  1042be:	eb 22                	jmp    1042e2 <fmt.Parser.char+0xc2>
  1042c0:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1042c7:	00 00 00 
  1042ca:	be 10 00 00 00       	mov    $0x10,%esi
  1042cf:	31 c0                	xor    %eax,%eax
  1042d1:	89 c2                	mov    %eax,%edx
  1042d3:	48 b9 e0 09 10 00 00 	movabs $0x1009e0,%rcx
  1042da:	00 00 00 
  1042dd:	e8 2e dc ff ff       	callq  101f10 <builtin.default_panic>
  1042e2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  1042e6:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  1042ea:	8a 55 97             	mov    -0x69(%rbp),%dl
  1042ed:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  1042f1:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  1042f5:	48 89 3e             	mov    %rdi,(%rsi)
            return ch;
  1042f8:	88 55 f8             	mov    %dl,-0x8(%rbp)
  1042fb:	c6 45 f9 01          	movb   $0x1,-0x7(%rbp)
  1042ff:	66 8b 55 f8          	mov    -0x8(%rbp),%dx
  104303:	66 89 11             	mov    %dx,(%rcx)
  104306:	48 83 c4 70          	add    $0x70,%rsp
  10430a:	5d                   	pop    %rbp
  10430b:	c3                   	retq   
  10430c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  104310:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
        return null;
  104314:	66 8b 14 25 b2 03 10 	mov    0x1003b2,%dx
  10431b:	00 
  10431c:	66 89 11             	mov    %dx,(%rcx)
  10431f:	48 83 c4 70          	add    $0x70,%rsp
  104323:	5d                   	pop    %rbp
  104324:	c3                   	retq   
  104325:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  10432c:	00 00 00 
  10432f:	90                   	nop

0000000000104330 <fmt.Parser.peek>:
    fn peek(self: *@This(), n: usize) ?u8 {
  104330:	55                   	push   %rbp
  104331:	48 89 e5             	mov    %rsp,%rbp
  104334:	48 83 ec 70          	sub    $0x70,%rsp
  104338:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  10433c:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  104340:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  104344:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  104348:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  10434c:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
        return if (self.pos + n < self.buf.len) self.buf[self.pos + n] else null;
  104350:	48 8b 46 10          	mov    0x10(%rsi),%rax
  104354:	48 01 d0             	add    %rdx,%rax
  104357:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  10435b:	0f 92 45 e0          	setb   -0x20(%rbp)
  10435f:	8a 45 e0             	mov    -0x20(%rbp),%al
  104362:	84 c0                	test   %al,%al
  104364:	75 04                	jne    10436a <fmt.Parser.peek+0x3a>
  104366:	eb 00                	jmp    104368 <fmt.Parser.peek+0x38>
  104368:	eb 22                	jmp    10438c <fmt.Parser.peek+0x5c>
  10436a:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104371:	00 00 00 
  104374:	be 10 00 00 00       	mov    $0x10,%esi
  104379:	31 c0                	xor    %eax,%eax
  10437b:	89 c2                	mov    %eax,%edx
  10437d:	48 b9 f0 09 10 00 00 	movabs $0x1009f0,%rcx
  104384:	00 00 00 
  104387:	e8 84 db ff ff       	callq  101f10 <builtin.default_panic>
  10438c:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  104390:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  104394:	48 8b 11             	mov    (%rcx),%rdx
  104397:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  10439b:	48 39 c8             	cmp    %rcx,%rax
  10439e:	73 2f                	jae    1043cf <fmt.Parser.peek+0x9f>
  1043a0:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  1043a4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  1043a8:	48 8b 10             	mov    (%rax),%rdx
  1043ab:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  1043af:	48 8b 50 08          	mov    0x8(%rax),%rdx
  1043b3:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
  1043b7:	48 8b 40 10          	mov    0x10(%rax),%rax
  1043bb:	48 01 c8             	add    %rcx,%rax
  1043be:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1043c2:	0f 92 45 f0          	setb   -0x10(%rbp)
  1043c6:	8a 45 f0             	mov    -0x10(%rbp),%al
  1043c9:	84 c0                	test   %al,%al
  1043cb:	74 13                	je     1043e0 <fmt.Parser.peek+0xb0>
  1043cd:	eb 13                	jmp    1043e2 <fmt.Parser.peek+0xb2>
  1043cf:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  1043d3:	66 8b 0c 25 b4 03 10 	mov    0x1003b4,%cx
  1043da:	00 
  1043db:	66 89 08             	mov    %cx,(%rax)
  1043de:	eb 61                	jmp    104441 <fmt.Parser.peek+0x111>
  1043e0:	eb 22                	jmp    104404 <fmt.Parser.peek+0xd4>
  1043e2:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1043e9:	00 00 00 
  1043ec:	be 10 00 00 00       	mov    $0x10,%esi
  1043f1:	31 c0                	xor    %eax,%eax
  1043f3:	89 c2                	mov    %eax,%edx
  1043f5:	48 b9 00 0a 10 00 00 	movabs $0x100a00,%rcx
  1043fc:	00 00 00 
  1043ff:	e8 0c db ff ff       	callq  101f10 <builtin.default_panic>
  104404:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  104408:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10440c:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  104410:	48 39 c8             	cmp    %rcx,%rax
  104413:	73 02                	jae    104417 <fmt.Parser.peek+0xe7>
  104415:	eb 0d                	jmp    104424 <fmt.Parser.peek+0xf4>
  104417:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  10441b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10441f:	e8 cc d9 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104424:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  104428:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  10442c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  104430:	8a 0c 11             	mov    (%rcx,%rdx,1),%cl
  104433:	88 4d f8             	mov    %cl,-0x8(%rbp)
  104436:	c6 45 f9 01          	movb   $0x1,-0x7(%rbp)
  10443a:	66 8b 4d f8          	mov    -0x8(%rbp),%cx
  10443e:	66 89 08             	mov    %cx,(%rax)
  104441:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  104445:	48 83 c4 70          	add    $0x70,%rsp
  104449:	5d                   	pop    %rbp
  10444a:	c3                   	retq   
  10444b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000104450 <fmt.ArgState.nextArg>:
    fn nextArg(self: *@This(), arg_index: ?usize) ?usize {
  104450:	55                   	push   %rbp
  104451:	48 89 e5             	mov    %rsp,%rbp
  104454:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  10445b:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  10445f:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  104463:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  104467:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  10446b:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
        const next_index = arg_index orelse init: {
  10446f:	80 7a 08 00          	cmpb   $0x0,0x8(%rdx)
  104473:	74 0d                	je     104482 <fmt.ArgState.nextArg+0x32>
  104475:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  104479:	48 8b 00             	mov    (%rax),%rax
  10447c:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  104480:	eb 69                	jmp    1044eb <fmt.ArgState.nextArg+0x9b>
  104482:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
            const arg = self.next_arg;
  104486:	48 8b 08             	mov    (%rax),%rcx
  104489:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  10448d:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
            self.next_arg += 1;
  104491:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  104495:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  104499:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  10449d:	48 8b 00             	mov    (%rax),%rax
  1044a0:	48 ff c0             	inc    %rax
  1044a3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  1044a7:	0f 94 45 d8          	sete   -0x28(%rbp)
  1044ab:	8a 45 d8             	mov    -0x28(%rbp),%al
  1044ae:	84 c0                	test   %al,%al
  1044b0:	75 04                	jne    1044b6 <fmt.ArgState.nextArg+0x66>
  1044b2:	eb 00                	jmp    1044b4 <fmt.ArgState.nextArg+0x64>
  1044b4:	eb 22                	jmp    1044d8 <fmt.ArgState.nextArg+0x88>
  1044b6:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1044bd:	00 00 00 
  1044c0:	be 10 00 00 00       	mov    $0x10,%esi
  1044c5:	31 c0                	xor    %eax,%eax
  1044c7:	89 c2                	mov    %eax,%edx
  1044c9:	48 b9 10 0a 10 00 00 	movabs $0x100a10,%rcx
  1044d0:	00 00 00 
  1044d3:	e8 38 da ff ff       	callq  101f10 <builtin.default_panic>
  1044d8:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  1044dc:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  1044e0:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  1044e4:	48 89 11             	mov    %rdx,(%rcx)
  1044e7:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  1044eb:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  1044ef:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  1044f3:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
            break :init arg;
  1044fa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
        if (next_index >= self.args_len) {
  1044fe:	48 3b 41 08          	cmp    0x8(%rcx),%rax
  104502:	72 28                	jb     10452c <fmt.ArgState.nextArg+0xdc>
  104504:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  104508:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
            return null;
  10450c:	48 8b 14 25 20 0a 10 	mov    0x100a20,%rdx
  104513:	00 
  104514:	48 89 11             	mov    %rdx,(%rcx)
  104517:	48 8b 14 25 28 0a 10 	mov    0x100a28,%rdx
  10451e:	00 
  10451f:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  104523:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  10452a:	5d                   	pop    %rbp
  10452b:	c3                   	retq   
  10452c:	eb 00                	jmp    10452e <fmt.ArgState.nextArg+0xde>
  10452e:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  104535:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
        self.used_args |= @as(ArgSetType, 1) << @intCast(u5, next_index);
  104539:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  10453d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  104541:	48 89 c2             	mov    %rax,%rdx
  104544:	48 83 c2 10          	add    $0x10,%rdx
  104548:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  10454f:	8b 40 10             	mov    0x10(%rax),%eax
  104552:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  104558:	b8 1f 00 00 00       	mov    $0x1f,%eax
  10455d:	48 29 c8             	sub    %rcx,%rax
  104560:	48 83 f8 1f          	cmp    $0x1f,%rax
  104564:	77 02                	ja     104568 <fmt.ArgState.nextArg+0x118>
  104566:	eb 22                	jmp    10458a <fmt.ArgState.nextArg+0x13a>
  104568:	48 bf 89 05 10 00 00 	movabs $0x100589,%rdi
  10456f:	00 00 00 
  104572:	be 1b 00 00 00       	mov    $0x1b,%esi
  104577:	31 c0                	xor    %eax,%eax
  104579:	89 c2                	mov    %eax,%edx
  10457b:	48 b9 30 0a 10 00 00 	movabs $0x100a30,%rcx
  104582:	00 00 00 
  104585:	e8 86 d9 ff ff       	callq  101f10 <builtin.default_panic>
  10458a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  10458e:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  104595:	48 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%rsi
  10459c:	8b bd 74 ff ff ff    	mov    -0x8c(%rbp),%edi
  1045a2:	89 d1                	mov    %edx,%ecx
  1045a4:	83 e1 1f             	and    $0x1f,%ecx
  1045a7:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  1045ad:	41 d3 e0             	shl    %cl,%r8d
  1045b0:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  1045b4:	44 09 c7             	or     %r8d,%edi
  1045b7:	89 3e                	mov    %edi,(%rsi)
        return next_index;
  1045b9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  1045bd:	c6 45 f8 01          	movb   $0x1,-0x8(%rbp)
  1045c1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1045c5:	48 89 11             	mov    %rdx,(%rcx)
  1045c8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  1045cc:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  1045d0:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  1045d7:	5d                   	pop    %rbp
  1045d8:	c3                   	retq   
  1045d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000001045e0 <fmt.formatValue__anon_1705>:
) !void {
  1045e0:	55                   	push   %rbp
  1045e1:	48 89 e5             	mov    %rsp,%rbp
  1045e4:	48 83 ec 20          	sub    $0x20,%rsp
  1045e8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  1045ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
        .Int, .ComptimeInt => return formatIntValue(value, fmt, options, writer),
  1045f0:	e8 2b 00 00 00       	callq  104620 <fmt.formatIntValue__anon_1709>
  1045f5:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
  1045f9:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%rbp)
  1045fe:	75 0a                	jne    10460a <fmt.formatValue__anon_1705+0x2a>
  104600:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  104604:	48 83 c4 20          	add    $0x20,%rsp
  104608:	5d                   	pop    %rbp
  104609:	c3                   	retq   
  10460a:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  10460e:	e8 cd eb ff ff       	callq  1031e0 <builtin.returnError>
  104613:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  104617:	48 83 c4 20          	add    $0x20,%rsp
  10461b:	5d                   	pop    %rbp
  10461c:	c3                   	retq   
  10461d:	0f 1f 00             	nopl   (%rax)

0000000000104620 <fmt.formatIntValue__anon_1709>:
) !void {
  104620:	55                   	push   %rbp
  104621:	48 89 e5             	mov    %rsp,%rbp
  104624:	48 83 ec 20          	sub    $0x20,%rsp
  104628:	49 89 c9             	mov    %rcx,%r9
  10462b:	49 89 d0             	mov    %rdx,%r8
  10462e:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  104632:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    const int_value = if (@TypeOf(value) == comptime_int) blk: {
  104636:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    return formatInt(int_value, radix, case, options, writer);
  10463a:	ba 0a 00 00 00       	mov    $0xa,%edx
  10463f:	31 c9                	xor    %ecx,%ecx
  104641:	e8 2a 00 00 00       	callq  104670 <fmt.formatInt__anon_1715>
  104646:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
  10464a:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%rbp)
  10464f:	75 0a                	jne    10465b <fmt.formatIntValue__anon_1709+0x3b>
  104651:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  104655:	48 83 c4 20          	add    $0x20,%rsp
  104659:	5d                   	pop    %rbp
  10465a:	c3                   	retq   
  10465b:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  10465f:	e8 7c eb ff ff       	callq  1031e0 <builtin.returnError>
  104664:	66 8b 45 fe          	mov    -0x2(%rbp),%ax
  104668:	48 83 c4 20          	add    $0x20,%rsp
  10466c:	5d                   	pop    %rbp
  10466d:	c3                   	retq   
  10466e:	66 90                	xchg   %ax,%ax

0000000000104670 <fmt.formatInt__anon_1715>:
) !void {
  104670:	55                   	push   %rbp
  104671:	48 89 e5             	mov    %rsp,%rbp
  104674:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
  10467b:	4c 89 8d b0 fe ff ff 	mov    %r9,-0x150(%rbp)
  104682:	4c 89 85 b8 fe ff ff 	mov    %r8,-0x148(%rbp)
  104689:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  104690:	48 89 bd c0 fe ff ff 	mov    %rdi,-0x140(%rbp)
  104697:	88 8d cf fe ff ff    	mov    %cl,-0x131(%rbp)
  10469d:	88 d0                	mov    %dl,%al
  10469f:	88 85 e7 fe ff ff    	mov    %al,-0x119(%rbp)
  1046a5:	48 89 b5 e8 fe ff ff 	mov    %rsi,-0x118(%rbp)
  1046ac:	88 85 f6 fe ff ff    	mov    %al,-0x10a(%rbp)
  1046b2:	80 e1 01             	and    $0x1,%cl
  1046b5:	88 8d f7 fe ff ff    	mov    %cl,-0x109(%rbp)
    assert(base >= 2);
  1046bb:	3c 02                	cmp    $0x2,%al
  1046bd:	0f 93 c0             	setae  %al
  1046c0:	0f b6 f8             	movzbl %al,%edi
  1046c3:	e8 38 ed ff ff       	callq  103400 <debug.assert>
  1046c8:	48 8b bd d0 fe ff ff 	mov    -0x130(%rbp),%rdi
    const int_value = if (@TypeOf(value) == comptime_int) blk: {
  1046cf:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
    const min_int_bits = comptime math.max(value_info.bits, 8);
  1046d6:	66 c7 85 06 ff ff ff 	movw   $0x40,-0xfa(%rbp)
  1046dd:	40 00 
    const abs_value = math.absCast(int_value);
  1046df:	e8 5c 07 00 00       	callq  104e40 <math.absCast__anon_1717>
  1046e4:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
  1046eb:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    var buf: [1 + math.max(value_info.bits, 1)]u8 = undefined;
  1046f2:	48 8d bd 17 ff ff ff 	lea    -0xe9(%rbp),%rdi
  1046f9:	be aa 00 00 00       	mov    $0xaa,%esi
  1046fe:	ba 41 00 00 00       	mov    $0x41,%edx
  104703:	e8 88 28 00 00       	callq  106f90 <memset>
  104708:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
  10470f:	8a 85 e7 fe ff ff    	mov    -0x119(%rbp),%al
    var a: MinInt = abs_value;
  104715:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    var index: usize = buf.len;
  10471c:	48 c7 85 60 ff ff ff 	movq   $0x41,-0xa0(%rbp)
  104723:	41 00 00 00 
    if (base == 10 and !isComptime()) {
  104727:	3c 0a                	cmp    $0xa,%al
  104729:	75 0f                	jne    10473a <fmt.formatInt__anon_1715+0xca>
  10472b:	e8 30 07 00 00       	callq  104e60 <fmt.isComptime>
  104730:	34 ff                	xor    $0xff,%al
  104732:	88 85 af fe ff ff    	mov    %al,-0x151(%rbp)
  104738:	eb 0a                	jmp    104744 <fmt.formatInt__anon_1715+0xd4>
  10473a:	31 c0                	xor    %eax,%eax
  10473c:	88 85 af fe ff ff    	mov    %al,-0x151(%rbp)
  104742:	eb 00                	jmp    104744 <fmt.formatInt__anon_1715+0xd4>
  104744:	8a 85 af fe ff ff    	mov    -0x151(%rbp),%al
  10474a:	a8 01                	test   $0x1,%al
  10474c:	75 02                	jne    104750 <fmt.formatInt__anon_1715+0xe0>
  10474e:	eb 02                	jmp    104752 <fmt.formatInt__anon_1715+0xe2>
  104750:	eb 05                	jmp    104757 <fmt.formatInt__anon_1715+0xe7>
            buf[index..][0..2].* = digits2(@intCast(usize, a));
  104752:	e9 27 04 00 00       	jmpq   104b7e <fmt.formatInt__anon_1715+0x50e>
        while (a >= 100) : (a = @divTrunc(a, 100)) {
  104757:	48 83 bd 58 ff ff ff 	cmpq   $0x64,-0xa8(%rbp)
  10475e:	64 
  10475f:	72 25                	jb     104786 <fmt.formatInt__anon_1715+0x116>
            index -= 2;
  104761:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104768:	48 83 e8 02          	sub    $0x2,%rax
  10476c:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  104773:	0f 92 85 70 ff ff ff 	setb   -0x90(%rbp)
  10477a:	8a 85 70 ff ff ff    	mov    -0x90(%rbp),%al
  104780:	84 c0                	test   %al,%al
  104782:	74 07                	je     10478b <fmt.formatInt__anon_1715+0x11b>
  104784:	eb 07                	jmp    10478d <fmt.formatInt__anon_1715+0x11d>
        while (a >= 100) : (a = @divTrunc(a, 100)) {
  104786:	e9 6d 01 00 00       	jmpq   1048f8 <fmt.formatInt__anon_1715+0x288>
            index -= 2;
  10478b:	eb 22                	jmp    1047af <fmt.formatInt__anon_1715+0x13f>
  10478d:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104794:	00 00 00 
  104797:	be 10 00 00 00       	mov    $0x10,%esi
  10479c:	31 c0                	xor    %eax,%eax
  10479e:	89 c2                	mov    %eax,%edx
  1047a0:	48 b9 40 0a 10 00 00 	movabs $0x100a40,%rcx
  1047a7:	00 00 00 
  1047aa:	e8 61 d7 ff ff       	callq  101f10 <builtin.default_panic>
  1047af:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  1047b6:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
            buf[index..][0..2].* = digits2(@intCast(usize, a % 100));
  1047bd:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  1047c4:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  1047cb:	48 8d 8d 17 ff ff ff 	lea    -0xe9(%rbp),%rcx
  1047d2:	48 01 c1             	add    %rax,%rcx
  1047d5:	48 89 8d a0 fe ff ff 	mov    %rcx,-0x160(%rbp)
  1047dc:	48 83 f8 41          	cmp    $0x41,%rax
  1047e0:	77 02                	ja     1047e4 <fmt.formatInt__anon_1715+0x174>
  1047e2:	eb 11                	jmp    1047f5 <fmt.formatInt__anon_1715+0x185>
  1047e4:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
  1047eb:	be 41 00 00 00       	mov    $0x41,%esi
  1047f0:	e8 cb e1 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1047f5:	48 8b 8d 98 fe ff ff 	mov    -0x168(%rbp),%rcx
  1047fc:	b8 41 00 00 00       	mov    $0x41,%eax
  104801:	48 29 c8             	sub    %rcx,%rax
  104804:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
  10480b:	b0 01                	mov    $0x1,%al
  10480d:	a8 01                	test   $0x1,%al
  10480f:	75 02                	jne    104813 <fmt.formatInt__anon_1715+0x1a3>
  104811:	eb 02                	jmp    104815 <fmt.formatInt__anon_1715+0x1a5>
  104813:	eb 0d                	jmp    104822 <fmt.formatInt__anon_1715+0x1b2>
  104815:	be 41 00 00 00       	mov    $0x41,%esi
  10481a:	48 89 f7             	mov    %rsi,%rdi
  10481d:	e8 ce d5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104822:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
  104829:	48 83 f8 41          	cmp    $0x41,%rax
  10482d:	77 02                	ja     104831 <fmt.formatInt__anon_1715+0x1c1>
  10482f:	eb 11                	jmp    104842 <fmt.formatInt__anon_1715+0x1d2>
  104831:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
  104838:	be 41 00 00 00       	mov    $0x41,%esi
  10483d:	e8 ae d5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104842:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  104849:	48 8b 8d 90 fe ff ff 	mov    -0x170(%rbp),%rcx
  104850:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  104854:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  10485b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  104862:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
  104869:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  10486d:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
  104874:	b0 01                	mov    $0x1,%al
  104876:	a8 01                	test   $0x1,%al
  104878:	75 02                	jne    10487c <fmt.formatInt__anon_1715+0x20c>
  10487a:	eb 02                	jmp    10487e <fmt.formatInt__anon_1715+0x20e>
  10487c:	eb 0e                	jmp    10488c <fmt.formatInt__anon_1715+0x21c>
  10487e:	31 c0                	xor    %eax,%eax
  104880:	89 c7                	mov    %eax,%edi
  104882:	be 02 00 00 00       	mov    $0x2,%esi
  104887:	e8 34 e1 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  10488c:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
  104893:	b8 02 00 00 00       	mov    $0x2,%eax
  104898:	48 39 c8             	cmp    %rcx,%rax
  10489b:	77 02                	ja     10489f <fmt.formatInt__anon_1715+0x22f>
  10489d:	eb 11                	jmp    1048b0 <fmt.formatInt__anon_1715+0x240>
  10489f:	48 8b b5 88 fe ff ff 	mov    -0x178(%rbp),%rsi
  1048a6:	bf 02 00 00 00       	mov    $0x2,%edi
  1048ab:	e8 40 d5 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1048b0:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  1048b7:	b9 64 00 00 00       	mov    $0x64,%ecx
  1048bc:	31 d2                	xor    %edx,%edx
  1048be:	48 f7 f1             	div    %rcx
  1048c1:	48 89 d6             	mov    %rdx,%rsi
  1048c4:	48 8d 7d 8e          	lea    -0x72(%rbp),%rdi
  1048c8:	e8 b3 05 00 00       	callq  104e80 <fmt.digits2>
  1048cd:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  1048d4:	66 8b 4d 8e          	mov    -0x72(%rbp),%cx
  1048d8:	66 89 08             	mov    %cx,(%rax)
        while (a >= 100) : (a = @divTrunc(a, 100)) {
  1048db:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  1048e2:	b9 64 00 00 00       	mov    $0x64,%ecx
  1048e7:	31 d2                	xor    %edx,%edx
  1048e9:	48 f7 f1             	div    %rcx
  1048ec:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  1048f3:	e9 5f fe ff ff       	jmpq   104757 <fmt.formatInt__anon_1715+0xe7>
        if (a < 10) {
  1048f8:	48 83 bd 58 ff ff ff 	cmpq   $0xa,-0xa8(%rbp)
  1048ff:	0a 
  104900:	73 1c                	jae    10491e <fmt.formatInt__anon_1715+0x2ae>
            index -= 1;
  104902:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104909:	48 83 e8 01          	sub    $0x1,%rax
  10490d:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  104911:	0f 92 45 98          	setb   -0x68(%rbp)
  104915:	8a 45 98             	mov    -0x68(%rbp),%al
  104918:	84 c0                	test   %al,%al
  10491a:	74 25                	je     104941 <fmt.formatInt__anon_1715+0x2d1>
  10491c:	eb 25                	jmp    104943 <fmt.formatInt__anon_1715+0x2d3>
            index -= 2;
  10491e:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104925:	48 83 e8 02          	sub    $0x2,%rax
  104929:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  10492d:	0f 92 45 b0          	setb   -0x50(%rbp)
  104931:	8a 45 b0             	mov    -0x50(%rbp),%al
  104934:	84 c0                	test   %al,%al
  104936:	0f 84 03 01 00 00    	je     104a3f <fmt.formatInt__anon_1715+0x3cf>
  10493c:	e9 00 01 00 00       	jmpq   104a41 <fmt.formatInt__anon_1715+0x3d1>
            index -= 1;
  104941:	eb 22                	jmp    104965 <fmt.formatInt__anon_1715+0x2f5>
  104943:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  10494a:	00 00 00 
  10494d:	be 10 00 00 00       	mov    $0x10,%esi
  104952:	31 c0                	xor    %eax,%eax
  104954:	89 c2                	mov    %eax,%edx
  104956:	48 b9 50 0a 10 00 00 	movabs $0x100a50,%rcx
  10495d:	00 00 00 
  104960:	e8 ab d5 ff ff       	callq  101f10 <builtin.default_panic>
  104965:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  104969:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
            buf[index] = '0' + @intCast(u8, a);
  104970:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104977:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
  10497e:	48 83 f8 41          	cmp    $0x41,%rax
  104982:	73 02                	jae    104986 <fmt.formatInt__anon_1715+0x316>
  104984:	eb 11                	jmp    104997 <fmt.formatInt__anon_1715+0x327>
  104986:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
  10498d:	be 41 00 00 00       	mov    $0x41,%esi
  104992:	e8 59 d4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104997:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  10499e:	48 8d 85 17 ff ff ff 	lea    -0xe9(%rbp),%rax
  1049a5:	48 01 c8             	add    %rcx,%rax
  1049a8:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
  1049af:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
  1049b6:	48 89 8d 70 fe ff ff 	mov    %rcx,-0x190(%rbp)
  1049bd:	b8 ff 00 00 00       	mov    $0xff,%eax
  1049c2:	48 29 c8             	sub    %rcx,%rax
  1049c5:	48 3d ff 00 00 00    	cmp    $0xff,%rax
  1049cb:	77 02                	ja     1049cf <fmt.formatInt__anon_1715+0x35f>
  1049cd:	eb 22                	jmp    1049f1 <fmt.formatInt__anon_1715+0x381>
  1049cf:	48 bf 89 05 10 00 00 	movabs $0x100589,%rdi
  1049d6:	00 00 00 
  1049d9:	be 1b 00 00 00       	mov    $0x1b,%esi
  1049de:	31 c0                	xor    %eax,%eax
  1049e0:	89 c2                	mov    %eax,%edx
  1049e2:	48 b9 60 0a 10 00 00 	movabs $0x100a60,%rcx
  1049e9:	00 00 00 
  1049ec:	e8 1f d5 ff ff       	callq  101f10 <builtin.default_panic>
  1049f1:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  1049f8:	04 30                	add    $0x30,%al
  1049fa:	88 45 a0             	mov    %al,-0x60(%rbp)
  1049fd:	0f 92 45 a1          	setb   -0x5f(%rbp)
  104a01:	8a 45 a1             	mov    -0x5f(%rbp),%al
  104a04:	84 c0                	test   %al,%al
  104a06:	75 04                	jne    104a0c <fmt.formatInt__anon_1715+0x39c>
  104a08:	eb 00                	jmp    104a0a <fmt.formatInt__anon_1715+0x39a>
  104a0a:	eb 22                	jmp    104a2e <fmt.formatInt__anon_1715+0x3be>
  104a0c:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104a13:	00 00 00 
  104a16:	be 10 00 00 00       	mov    $0x10,%esi
  104a1b:	31 c0                	xor    %eax,%eax
  104a1d:	89 c2                	mov    %eax,%edx
  104a1f:	48 b9 70 0a 10 00 00 	movabs $0x100a70,%rcx
  104a26:	00 00 00 
  104a29:	e8 e2 d4 ff ff       	callq  101f10 <builtin.default_panic>
  104a2e:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
  104a35:	8a 4d a0             	mov    -0x60(%rbp),%cl
  104a38:	88 08                	mov    %cl,(%rax)
  104a3a:	e9 3a 01 00 00       	jmpq   104b79 <fmt.formatInt__anon_1715+0x509>
            index -= 2;
  104a3f:	eb 22                	jmp    104a63 <fmt.formatInt__anon_1715+0x3f3>
  104a41:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104a48:	00 00 00 
  104a4b:	be 10 00 00 00       	mov    $0x10,%esi
  104a50:	31 c0                	xor    %eax,%eax
  104a52:	89 c2                	mov    %eax,%edx
  104a54:	48 b9 80 0a 10 00 00 	movabs $0x100a80,%rcx
  104a5b:	00 00 00 
  104a5e:	e8 ad d4 ff ff       	callq  101f10 <builtin.default_panic>
  104a63:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  104a67:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
            buf[index..][0..2].* = digits2(@intCast(usize, a));
  104a6e:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104a75:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  104a7c:	48 8d 8d 17 ff ff ff 	lea    -0xe9(%rbp),%rcx
  104a83:	48 01 c1             	add    %rax,%rcx
  104a86:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
  104a8d:	48 83 f8 41          	cmp    $0x41,%rax
  104a91:	77 02                	ja     104a95 <fmt.formatInt__anon_1715+0x425>
  104a93:	eb 11                	jmp    104aa6 <fmt.formatInt__anon_1715+0x436>
  104a95:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
  104a9c:	be 41 00 00 00       	mov    $0x41,%esi
  104aa1:	e8 1a df ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  104aa6:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
  104aad:	b8 41 00 00 00       	mov    $0x41,%eax
  104ab2:	48 29 c8             	sub    %rcx,%rax
  104ab5:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
  104abc:	b0 01                	mov    $0x1,%al
  104abe:	a8 01                	test   $0x1,%al
  104ac0:	75 02                	jne    104ac4 <fmt.formatInt__anon_1715+0x454>
  104ac2:	eb 02                	jmp    104ac6 <fmt.formatInt__anon_1715+0x456>
  104ac4:	eb 0d                	jmp    104ad3 <fmt.formatInt__anon_1715+0x463>
  104ac6:	be 41 00 00 00       	mov    $0x41,%esi
  104acb:	48 89 f7             	mov    %rsi,%rdi
  104ace:	e8 1d d3 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104ad3:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
  104ada:	48 83 f8 41          	cmp    $0x41,%rax
  104ade:	77 02                	ja     104ae2 <fmt.formatInt__anon_1715+0x472>
  104ae0:	eb 11                	jmp    104af3 <fmt.formatInt__anon_1715+0x483>
  104ae2:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
  104ae9:	be 41 00 00 00       	mov    $0x41,%esi
  104aee:	e8 fd d2 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104af3:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
  104afa:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
  104b01:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  104b05:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  104b09:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  104b0d:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
  104b14:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  104b18:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
  104b1f:	b0 01                	mov    $0x1,%al
  104b21:	a8 01                	test   $0x1,%al
  104b23:	75 02                	jne    104b27 <fmt.formatInt__anon_1715+0x4b7>
  104b25:	eb 02                	jmp    104b29 <fmt.formatInt__anon_1715+0x4b9>
  104b27:	eb 0e                	jmp    104b37 <fmt.formatInt__anon_1715+0x4c7>
  104b29:	31 c0                	xor    %eax,%eax
  104b2b:	89 c7                	mov    %eax,%edi
  104b2d:	be 02 00 00 00       	mov    $0x2,%esi
  104b32:	e8 89 de ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  104b37:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
  104b3e:	b8 02 00 00 00       	mov    $0x2,%eax
  104b43:	48 39 c8             	cmp    %rcx,%rax
  104b46:	77 02                	ja     104b4a <fmt.formatInt__anon_1715+0x4da>
  104b48:	eb 11                	jmp    104b5b <fmt.formatInt__anon_1715+0x4eb>
  104b4a:	48 8b b5 48 fe ff ff 	mov    -0x1b8(%rbp),%rsi
  104b51:	bf 02 00 00 00       	mov    $0x2,%edi
  104b56:	e8 95 d2 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104b5b:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  104b62:	48 8d 7d ce          	lea    -0x32(%rbp),%rdi
  104b66:	e8 15 03 00 00       	callq  104e80 <fmt.digits2>
  104b6b:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
  104b72:	66 8b 4d ce          	mov    -0x32(%rbp),%cx
  104b76:	66 89 08             	mov    %cx,(%rax)
  104b79:	e9 c8 01 00 00       	jmpq   104d46 <fmt.formatInt__anon_1715+0x6d6>
  104b7e:	8a 85 e7 fe ff ff    	mov    -0x119(%rbp),%al
            const digit = a % base;
  104b84:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
  104b8b:	48 89 8d 30 fe ff ff 	mov    %rcx,-0x1d0(%rbp)
  104b92:	0f b6 c0             	movzbl %al,%eax
  104b95:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
  104b9c:	48 83 f8 00          	cmp    $0x0,%rax
  104ba0:	74 02                	je     104ba4 <fmt.formatInt__anon_1715+0x534>
  104ba2:	eb 22                	jmp    104bc6 <fmt.formatInt__anon_1715+0x556>
  104ba4:	48 bf 36 06 10 00 00 	movabs $0x100636,%rdi
  104bab:	00 00 00 
  104bae:	be 10 00 00 00       	mov    $0x10,%esi
  104bb3:	31 c0                	xor    %eax,%eax
  104bb5:	89 c2                	mov    %eax,%edx
  104bb7:	48 b9 90 0a 10 00 00 	movabs $0x100a90,%rcx
  104bbe:	00 00 00 
  104bc1:	e8 4a d3 ff ff       	callq  101f10 <builtin.default_panic>
  104bc6:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
  104bcd:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  104bd4:	31 d2                	xor    %edx,%edx
  104bd6:	48 f7 f1             	div    %rcx
  104bd9:	48 89 d0             	mov    %rdx,%rax
  104bdc:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
  104be3:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
            index -= 1;
  104be7:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104bee:	48 83 e8 01          	sub    $0x1,%rax
  104bf2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  104bf6:	0f 92 45 e0          	setb   -0x20(%rbp)
  104bfa:	8a 45 e0             	mov    -0x20(%rbp),%al
  104bfd:	84 c0                	test   %al,%al
  104bff:	75 04                	jne    104c05 <fmt.formatInt__anon_1715+0x595>
  104c01:	eb 00                	jmp    104c03 <fmt.formatInt__anon_1715+0x593>
  104c03:	eb 22                	jmp    104c27 <fmt.formatInt__anon_1715+0x5b7>
  104c05:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104c0c:	00 00 00 
  104c0f:	be 10 00 00 00       	mov    $0x10,%esi
  104c14:	31 c0                	xor    %eax,%eax
  104c16:	89 c2                	mov    %eax,%edx
  104c18:	48 b9 a0 0a 10 00 00 	movabs $0x100aa0,%rcx
  104c1f:	00 00 00 
  104c22:	e8 e9 d2 ff ff       	callq  101f10 <builtin.default_panic>
  104c27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  104c2b:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
            buf[index] = digitToChar(@intCast(u8, digit), case);
  104c32:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104c39:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
  104c40:	48 83 f8 41          	cmp    $0x41,%rax
  104c44:	73 02                	jae    104c48 <fmt.formatInt__anon_1715+0x5d8>
  104c46:	eb 11                	jmp    104c59 <fmt.formatInt__anon_1715+0x5e9>
  104c48:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  104c4f:	be 41 00 00 00       	mov    $0x41,%esi
  104c54:	e8 97 d1 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104c59:	48 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%rcx
  104c60:	48 8b 95 20 fe ff ff 	mov    -0x1e0(%rbp),%rdx
  104c67:	48 8d 85 17 ff ff ff 	lea    -0xe9(%rbp),%rax
  104c6e:	48 01 d0             	add    %rdx,%rax
  104c71:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
  104c78:	b8 ff 00 00 00       	mov    $0xff,%eax
  104c7d:	48 29 c8             	sub    %rcx,%rax
  104c80:	48 3d ff 00 00 00    	cmp    $0xff,%rax
  104c86:	77 02                	ja     104c8a <fmt.formatInt__anon_1715+0x61a>
  104c88:	eb 22                	jmp    104cac <fmt.formatInt__anon_1715+0x63c>
  104c8a:	48 bf 89 05 10 00 00 	movabs $0x100589,%rdi
  104c91:	00 00 00 
  104c94:	be 1b 00 00 00       	mov    $0x1b,%esi
  104c99:	31 c0                	xor    %eax,%eax
  104c9b:	89 c2                	mov    %eax,%edx
  104c9d:	48 b9 b0 0a 10 00 00 	movabs $0x100ab0,%rcx
  104ca4:	00 00 00 
  104ca7:	e8 64 d2 ff ff       	callq  101f10 <builtin.default_panic>
  104cac:	8a 85 cf fe ff ff    	mov    -0x131(%rbp),%al
  104cb2:	48 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%rcx
  104cb9:	0f b6 f9             	movzbl %cl,%edi
  104cbc:	0f b6 f0             	movzbl %al,%esi
  104cbf:	e8 3c 03 00 00       	callq  105000 <fmt.digitToChar>
  104cc4:	48 8b 8d 18 fe ff ff 	mov    -0x1e8(%rbp),%rcx
  104ccb:	88 c2                	mov    %al,%dl
  104ccd:	8a 85 e7 fe ff ff    	mov    -0x119(%rbp),%al
  104cd3:	88 11                	mov    %dl,(%rcx)
            a /= base;
  104cd5:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
  104cdc:	48 89 8d 08 fe ff ff 	mov    %rcx,-0x1f8(%rbp)
  104ce3:	0f b6 c0             	movzbl %al,%eax
  104ce6:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  104ced:	48 83 f8 00          	cmp    $0x0,%rax
  104cf1:	74 02                	je     104cf5 <fmt.formatInt__anon_1715+0x685>
  104cf3:	eb 22                	jmp    104d17 <fmt.formatInt__anon_1715+0x6a7>
  104cf5:	48 bf 36 06 10 00 00 	movabs $0x100636,%rdi
  104cfc:	00 00 00 
  104cff:	be 10 00 00 00       	mov    $0x10,%esi
  104d04:	31 c0                	xor    %eax,%eax
  104d06:	89 c2                	mov    %eax,%edx
  104d08:	48 b9 c0 0a 10 00 00 	movabs $0x100ac0,%rcx
  104d0f:	00 00 00 
  104d12:	e8 f9 d1 ff ff       	callq  101f10 <builtin.default_panic>
  104d17:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  104d1e:	48 8b 85 08 fe ff ff 	mov    -0x1f8(%rbp),%rax
  104d25:	31 d2                	xor    %edx,%edx
  104d27:	48 f7 f1             	div    %rcx
  104d2a:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
            if (a == 0) break;
  104d31:	48 83 bd 58 ff ff ff 	cmpq   $0x0,-0xa8(%rbp)
  104d38:	00 
  104d39:	75 02                	jne    104d3d <fmt.formatInt__anon_1715+0x6cd>
  104d3b:	eb 07                	jmp    104d44 <fmt.formatInt__anon_1715+0x6d4>
  104d3d:	eb 00                	jmp    104d3f <fmt.formatInt__anon_1715+0x6cf>
  104d3f:	e9 3a fe ff ff       	jmpq   104b7e <fmt.formatInt__anon_1715+0x50e>
  104d44:	eb 00                	jmp    104d46 <fmt.formatInt__anon_1715+0x6d6>
    return formatBuf(buf[index..], options, writer);
  104d46:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  104d4d:	48 89 85 f8 fd ff ff 	mov    %rax,-0x208(%rbp)
  104d54:	48 8d 8d 17 ff ff ff 	lea    -0xe9(%rbp),%rcx
  104d5b:	48 01 c1             	add    %rax,%rcx
  104d5e:	48 89 8d 00 fe ff ff 	mov    %rcx,-0x200(%rbp)
  104d65:	48 83 f8 41          	cmp    $0x41,%rax
  104d69:	77 02                	ja     104d6d <fmt.formatInt__anon_1715+0x6fd>
  104d6b:	eb 11                	jmp    104d7e <fmt.formatInt__anon_1715+0x70e>
  104d6d:	48 8b bd f8 fd ff ff 	mov    -0x208(%rbp),%rdi
  104d74:	be 41 00 00 00       	mov    $0x41,%esi
  104d79:	e8 42 dc ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  104d7e:	48 8b 8d f8 fd ff ff 	mov    -0x208(%rbp),%rcx
  104d85:	b8 41 00 00 00       	mov    $0x41,%eax
  104d8a:	48 29 c8             	sub    %rcx,%rax
  104d8d:	48 89 85 f0 fd ff ff 	mov    %rax,-0x210(%rbp)
  104d94:	b0 01                	mov    $0x1,%al
  104d96:	a8 01                	test   $0x1,%al
  104d98:	75 02                	jne    104d9c <fmt.formatInt__anon_1715+0x72c>
  104d9a:	eb 02                	jmp    104d9e <fmt.formatInt__anon_1715+0x72e>
  104d9c:	eb 0d                	jmp    104dab <fmt.formatInt__anon_1715+0x73b>
  104d9e:	be 41 00 00 00       	mov    $0x41,%esi
  104da3:	48 89 f7             	mov    %rsi,%rdi
  104da6:	e8 45 d0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104dab:	48 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%rax
  104db2:	48 83 f8 41          	cmp    $0x41,%rax
  104db6:	77 02                	ja     104dba <fmt.formatInt__anon_1715+0x74a>
  104db8:	eb 11                	jmp    104dcb <fmt.formatInt__anon_1715+0x75b>
  104dba:	48 8b bd f8 fd ff ff 	mov    -0x208(%rbp),%rdi
  104dc1:	be 41 00 00 00       	mov    $0x41,%esi
  104dc6:	e8 25 d0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104dcb:	4c 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%r8
  104dd2:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  104dd9:	48 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%rdi
  104de0:	48 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%rax
  104de7:	48 8b 95 f0 fd ff ff 	mov    -0x210(%rbp),%rdx
  104dee:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  104df2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  104df6:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  104dfa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  104dfe:	e8 4d 03 00 00       	callq  105150 <fmt.formatBuf__anon_1720>
  104e03:	66 89 45 ee          	mov    %ax,-0x12(%rbp)
  104e07:	66 83 7d ee 00       	cmpw   $0x0,-0x12(%rbp)
  104e0c:	75 0d                	jne    104e1b <fmt.formatInt__anon_1715+0x7ab>
  104e0e:	66 8b 45 ee          	mov    -0x12(%rbp),%ax
  104e12:	48 81 c4 10 02 00 00 	add    $0x210,%rsp
  104e19:	5d                   	pop    %rbp
  104e1a:	c3                   	retq   
  104e1b:	48 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%rdi
  104e22:	e8 b9 e3 ff ff       	callq  1031e0 <builtin.returnError>
  104e27:	66 8b 45 ee          	mov    -0x12(%rbp),%ax
  104e2b:	48 81 c4 10 02 00 00 	add    $0x210,%rsp
  104e32:	5d                   	pop    %rbp
  104e33:	c3                   	retq   
  104e34:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  104e3b:	00 00 00 
  104e3e:	66 90                	xchg   %ax,%ax

0000000000104e40 <math.absCast__anon_1717>:
/// See also: `absInt`
pub fn absCast(x: anytype) switch (@typeInfo(@TypeOf(x))) {
    .ComptimeInt => comptime_int,
    .Int => |int_info| std.meta.Int(.unsigned, int_info.bits),
    else => @compileError("absCast only accepts integers"),
} {
  104e40:	55                   	push   %rbp
  104e41:	48 89 e5             	mov    %rsp,%rbp
  104e44:	50                   	push   %rax
  104e45:	48 89 f8             	mov    %rdi,%rax
  104e48:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
            } else {
                return x;
            }
        },
        .Int => |int_info| {
            if (int_info.signedness == .unsigned) return x;
  104e4c:	48 83 c4 08          	add    $0x8,%rsp
  104e50:	5d                   	pop    %rbp
  104e51:	c3                   	retq   
  104e52:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  104e59:	00 00 00 
  104e5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000104e60 <fmt.isComptime>:
fn isComptime() bool {
  104e60:	55                   	push   %rbp
  104e61:	48 89 e5             	mov    %rsp,%rbp
  104e64:	48 83 ec 01          	sub    $0x1,%rsp
    var a: u8 = 0;
  104e68:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
  104e6c:	31 c0                	xor    %eax,%eax
    return @typeInfo(@TypeOf(.{a})).Struct.fields[0].is_comptime;
  104e6e:	48 83 c4 01          	add    $0x1,%rsp
  104e72:	5d                   	pop    %rbp
  104e73:	c3                   	retq   
  104e74:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  104e7b:	00 00 00 
  104e7e:	66 90                	xchg   %ax,%ax

0000000000104e80 <fmt.digits2>:
fn digits2(value: usize) [2]u8 {
  104e80:	55                   	push   %rbp
  104e81:	48 89 e5             	mov    %rsp,%rbp
  104e84:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  104e8b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  104e8f:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  104e93:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
        "8081828384858687888990919293949596979899")[value * 2 ..][0..2].*;
  104e97:	48 01 f6             	add    %rsi,%rsi
  104e9a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  104e9e:	0f 92 45 d8          	setb   -0x28(%rbp)
  104ea2:	8a 45 d8             	mov    -0x28(%rbp),%al
  104ea5:	84 c0                	test   %al,%al
  104ea7:	75 04                	jne    104ead <fmt.digits2+0x2d>
  104ea9:	eb 00                	jmp    104eab <fmt.digits2+0x2b>
  104eab:	eb 22                	jmp    104ecf <fmt.digits2+0x4f>
  104ead:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104eb4:	00 00 00 
  104eb7:	be 10 00 00 00       	mov    $0x10,%esi
  104ebc:	31 c0                	xor    %eax,%eax
  104ebe:	89 c2                	mov    %eax,%edx
  104ec0:	48 b9 80 0b 10 00 00 	movabs $0x100b80,%rcx
  104ec7:	00 00 00 
  104eca:	e8 41 d0 ff ff       	callq  101f10 <builtin.default_panic>
  104ecf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  104ed3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  104ed7:	48 b9 78 06 10 00 00 	movabs $0x100678,%rcx
  104ede:	00 00 00 
  104ee1:	48 01 c1             	add    %rax,%rcx
  104ee4:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  104ee8:	48 3d c8 00 00 00    	cmp    $0xc8,%rax
  104eee:	77 02                	ja     104ef2 <fmt.digits2+0x72>
  104ef0:	eb 0e                	jmp    104f00 <fmt.digits2+0x80>
  104ef2:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  104ef6:	be c8 00 00 00       	mov    $0xc8,%esi
  104efb:	e8 c0 da ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  104f00:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  104f04:	b8 c8 00 00 00       	mov    $0xc8,%eax
  104f09:	48 29 c8             	sub    %rcx,%rax
  104f0c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  104f10:	b0 01                	mov    $0x1,%al
  104f12:	a8 01                	test   $0x1,%al
  104f14:	75 02                	jne    104f18 <fmt.digits2+0x98>
  104f16:	eb 02                	jmp    104f1a <fmt.digits2+0x9a>
  104f18:	eb 0f                	jmp    104f29 <fmt.digits2+0xa9>
  104f1a:	bf c8 00 00 00       	mov    $0xc8,%edi
  104f1f:	be c9 00 00 00       	mov    $0xc9,%esi
  104f24:	e8 c7 ce ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104f29:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  104f2d:	48 3d c8 00 00 00    	cmp    $0xc8,%rax
  104f33:	77 02                	ja     104f37 <fmt.digits2+0xb7>
  104f35:	eb 0e                	jmp    104f45 <fmt.digits2+0xc5>
  104f37:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  104f3b:	be c8 00 00 00       	mov    $0xc8,%esi
  104f40:	e8 ab ce ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104f45:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  104f49:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  104f4d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  104f51:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  104f55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  104f59:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  104f5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  104f61:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  104f65:	b0 01                	mov    $0x1,%al
  104f67:	a8 01                	test   $0x1,%al
  104f69:	75 02                	jne    104f6d <fmt.digits2+0xed>
  104f6b:	eb 02                	jmp    104f6f <fmt.digits2+0xef>
  104f6d:	eb 0e                	jmp    104f7d <fmt.digits2+0xfd>
  104f6f:	31 c0                	xor    %eax,%eax
  104f71:	89 c7                	mov    %eax,%edi
  104f73:	be 02 00 00 00       	mov    $0x2,%esi
  104f78:	e8 43 da ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  104f7d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  104f81:	48 ff c0             	inc    %rax
  104f84:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  104f88:	0f 94 45 f8          	sete   -0x8(%rbp)
  104f8c:	8a 45 f8             	mov    -0x8(%rbp),%al
  104f8f:	84 c0                	test   %al,%al
  104f91:	75 04                	jne    104f97 <fmt.digits2+0x117>
  104f93:	eb 00                	jmp    104f95 <fmt.digits2+0x115>
  104f95:	eb 22                	jmp    104fb9 <fmt.digits2+0x139>
  104f97:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  104f9e:	00 00 00 
  104fa1:	be 10 00 00 00       	mov    $0x10,%esi
  104fa6:	31 c0                	xor    %eax,%eax
  104fa8:	89 c2                	mov    %eax,%edx
  104faa:	48 b9 90 0b 10 00 00 	movabs $0x100b90,%rcx
  104fb1:	00 00 00 
  104fb4:	e8 57 cf ff ff       	callq  101f10 <builtin.default_panic>
  104fb9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  104fbd:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
  104fc1:	b8 02 00 00 00       	mov    $0x2,%eax
  104fc6:	48 39 c8             	cmp    %rcx,%rax
  104fc9:	77 02                	ja     104fcd <fmt.digits2+0x14d>
  104fcb:	eb 0e                	jmp    104fdb <fmt.digits2+0x15b>
  104fcd:	48 8b 75 88          	mov    -0x78(%rbp),%rsi
  104fd1:	bf 02 00 00 00       	mov    $0x2,%edi
  104fd6:	e8 15 ce ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  104fdb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  104fdf:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  104fe3:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    return ("0001020304050607080910111213141516171819" ++
  104fe7:	66 8b 12             	mov    (%rdx),%dx
  104fea:	66 89 11             	mov    %dx,(%rcx)
  104fed:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  104ff4:	5d                   	pop    %rbp
  104ff5:	c3                   	retq   
  104ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  104ffd:	00 00 00 

0000000000105000 <fmt.digitToChar>:
pub fn digitToChar(digit: u8, case: Case) u8 {
  105000:	55                   	push   %rbp
  105001:	48 89 e5             	mov    %rsp,%rbp
  105004:	48 83 ec 20          	sub    $0x20,%rsp
  105008:	40 88 f0             	mov    %sil,%al
  10500b:	88 45 e3             	mov    %al,-0x1d(%rbp)
  10500e:	40 88 f9             	mov    %dil,%cl
  105011:	88 4d e4             	mov    %cl,-0x1c(%rbp)
  105014:	88 4d e5             	mov    %cl,-0x1b(%rbp)
  105017:	24 01                	and    $0x1,%al
  105019:	88 45 e6             	mov    %al,-0x1a(%rbp)
  10501c:	8a 4d e4             	mov    -0x1c(%rbp),%cl
    return switch (digit) {
  10501f:	80 f9 00             	cmp    $0x0,%cl
  105022:	0f 93 c0             	setae  %al
  105025:	80 f9 09             	cmp    $0x9,%cl
  105028:	0f 96 c1             	setbe  %cl
  10502b:	20 c8                	and    %cl,%al
  10502d:	a8 01                	test   $0x1,%al
  10502f:	75 02                	jne    105033 <fmt.digitToChar+0x33>
  105031:	eb 15                	jmp    105048 <fmt.digitToChar+0x48>
  105033:	8a 45 e4             	mov    -0x1c(%rbp),%al
        0...9 => digit + '0',
  105036:	04 30                	add    $0x30,%al
  105038:	88 45 e8             	mov    %al,-0x18(%rbp)
  10503b:	0f 92 45 e9          	setb   -0x17(%rbp)
  10503f:	8a 45 e9             	mov    -0x17(%rbp),%al
  105042:	84 c0                	test   %al,%al
  105044:	74 19                	je     10505f <fmt.digitToChar+0x5f>
  105046:	eb 19                	jmp    105061 <fmt.digitToChar+0x61>
  105048:	8a 4d e4             	mov    -0x1c(%rbp),%cl
  10504b:	80 f9 0a             	cmp    $0xa,%cl
  10504e:	0f 93 c0             	setae  %al
  105051:	80 f9 23             	cmp    $0x23,%cl
  105054:	0f 96 c1             	setbe  %cl
  105057:	20 c8                	and    %cl,%al
  105059:	a8 01                	test   $0x1,%al
  10505b:	75 31                	jne    10508e <fmt.digitToChar+0x8e>
  10505d:	eb 38                	jmp    105097 <fmt.digitToChar+0x97>
  10505f:	eb 22                	jmp    105083 <fmt.digitToChar+0x83>
  105061:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105068:	00 00 00 
  10506b:	be 10 00 00 00       	mov    $0x10,%esi
  105070:	31 c0                	xor    %eax,%eax
  105072:	89 c2                	mov    %eax,%edx
  105074:	48 b9 a0 0b 10 00 00 	movabs $0x100ba0,%rcx
  10507b:	00 00 00 
  10507e:	e8 8d ce ff ff       	callq  101f10 <builtin.default_panic>
  105083:	8a 45 e8             	mov    -0x18(%rbp),%al
  105086:	88 45 e7             	mov    %al,-0x19(%rbp)
  105089:	e9 b4 00 00 00       	jmpq   105142 <fmt.digitToChar+0x142>
  10508e:	8a 45 e3             	mov    -0x1d(%rbp),%al
        10...35 => digit + ((if (case == .upper) @as(u8, 'A') else @as(u8, 'a')) - 10),
  105091:	a8 01                	test   $0x1,%al
  105093:	75 24                	jne    1050b9 <fmt.digitToChar+0xb9>
  105095:	eb 29                	jmp    1050c0 <fmt.digitToChar+0xc0>
        else => unreachable,
  105097:	48 bf 03 06 10 00 00 	movabs $0x100603,%rdi
  10509e:	00 00 00 
  1050a1:	be 18 00 00 00       	mov    $0x18,%esi
  1050a6:	31 c0                	xor    %eax,%eax
  1050a8:	89 c2                	mov    %eax,%edx
  1050aa:	48 b9 d0 0b 10 00 00 	movabs $0x100bd0,%rcx
  1050b1:	00 00 00 
  1050b4:	e8 57 ce ff ff       	callq  101f10 <builtin.default_panic>
        10...35 => digit + ((if (case == .upper) @as(u8, 'A') else @as(u8, 'a')) - 10),
  1050b9:	b0 41                	mov    $0x41,%al
  1050bb:	88 45 e2             	mov    %al,-0x1e(%rbp)
  1050be:	eb 07                	jmp    1050c7 <fmt.digitToChar+0xc7>
  1050c0:	b0 61                	mov    $0x61,%al
  1050c2:	88 45 e2             	mov    %al,-0x1e(%rbp)
  1050c5:	eb 00                	jmp    1050c7 <fmt.digitToChar+0xc7>
  1050c7:	8a 45 e2             	mov    -0x1e(%rbp),%al
  1050ca:	2c 0a                	sub    $0xa,%al
  1050cc:	88 45 f0             	mov    %al,-0x10(%rbp)
  1050cf:	0f 92 45 f1          	setb   -0xf(%rbp)
  1050d3:	8a 45 f1             	mov    -0xf(%rbp),%al
  1050d6:	84 c0                	test   %al,%al
  1050d8:	75 04                	jne    1050de <fmt.digitToChar+0xde>
  1050da:	eb 00                	jmp    1050dc <fmt.digitToChar+0xdc>
  1050dc:	eb 22                	jmp    105100 <fmt.digitToChar+0x100>
  1050de:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1050e5:	00 00 00 
  1050e8:	be 10 00 00 00       	mov    $0x10,%esi
  1050ed:	31 c0                	xor    %eax,%eax
  1050ef:	89 c2                	mov    %eax,%edx
  1050f1:	48 b9 b0 0b 10 00 00 	movabs $0x100bb0,%rcx
  1050f8:	00 00 00 
  1050fb:	e8 10 ce ff ff       	callq  101f10 <builtin.default_panic>
  105100:	8a 45 e4             	mov    -0x1c(%rbp),%al
  105103:	8a 4d f0             	mov    -0x10(%rbp),%cl
  105106:	00 c8                	add    %cl,%al
  105108:	88 45 f8             	mov    %al,-0x8(%rbp)
  10510b:	0f 92 45 f9          	setb   -0x7(%rbp)
  10510f:	8a 45 f9             	mov    -0x7(%rbp),%al
  105112:	84 c0                	test   %al,%al
  105114:	75 04                	jne    10511a <fmt.digitToChar+0x11a>
  105116:	eb 00                	jmp    105118 <fmt.digitToChar+0x118>
  105118:	eb 22                	jmp    10513c <fmt.digitToChar+0x13c>
  10511a:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105121:	00 00 00 
  105124:	be 10 00 00 00       	mov    $0x10,%esi
  105129:	31 c0                	xor    %eax,%eax
  10512b:	89 c2                	mov    %eax,%edx
  10512d:	48 b9 c0 0b 10 00 00 	movabs $0x100bc0,%rcx
  105134:	00 00 00 
  105137:	e8 d4 cd ff ff       	callq  101f10 <builtin.default_panic>
  10513c:	8a 45 f8             	mov    -0x8(%rbp),%al
  10513f:	88 45 e7             	mov    %al,-0x19(%rbp)
    return switch (digit) {
  105142:	8a 45 e7             	mov    -0x19(%rbp),%al
  105145:	48 83 c4 20          	add    $0x20,%rsp
  105149:	5d                   	pop    %rbp
  10514a:	c3                   	retq   
  10514b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000105150 <fmt.formatBuf__anon_1720>:
) !void {
  105150:	55                   	push   %rbp
  105151:	48 89 e5             	mov    %rsp,%rbp
  105154:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  10515b:	4c 89 85 08 ff ff ff 	mov    %r8,-0xf8(%rbp)
  105162:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
  105169:	48 89 bd 18 ff ff ff 	mov    %rdi,-0xe8(%rbp)
  105170:	48 89 d0             	mov    %rdx,%rax
  105173:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
  10517a:	48 89 f0             	mov    %rsi,%rax
  10517d:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  105184:	48 89 95 40 ff ff ff 	mov    %rdx,-0xc0(%rbp)
  10518b:	48 89 b5 38 ff ff ff 	mov    %rsi,-0xc8(%rbp)
  105192:	48 8b 07             	mov    (%rdi),%rax
  105195:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
    if (options.width) |min_width| {
  10519c:	48 8b 41 10          	mov    0x10(%rcx),%rax
  1051a0:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  1051a7:	48 8b 41 18          	mov    0x18(%rcx),%rax
  1051ab:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  1051b2:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  1051b9:	74 42                	je     1051fd <fmt.formatBuf__anon_1720+0xad>
  1051bb:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  1051c2:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  1051c9:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  1051d0:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  1051d7:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  1051de:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
        const width = unicode.utf8CountCodepoints(buf) catch buf.len;
  1051e5:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  1051ec:	e8 cf 05 00 00       	callq  1057c0 <unicode.utf8CountCodepoints>
  1051f1:	66 83 bd 68 ff ff ff 	cmpw   $0x0,-0x98(%rbp)
  1051f8:	00 
  1051f9:	74 44                	je     10523f <fmt.formatBuf__anon_1720+0xef>
  1051fb:	eb 52                	jmp    10524f <fmt.formatBuf__anon_1720+0xff>
  1051fd:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  105204:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  10520b:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105212:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
        try writer.writeAll(buf);
  105219:	48 8b 00             	mov    (%rax),%rax
  10521c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  105220:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
  105224:	e8 07 de ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  105229:	66 89 85 fe fe ff ff 	mov    %ax,-0x102(%rbp)
  105230:	66 83 f8 00          	cmp    $0x0,%ax
  105234:	0f 85 5e 04 00 00    	jne    105698 <fmt.formatBuf__anon_1720+0x548>
  10523a:	e9 75 04 00 00       	jmpq   1056b4 <fmt.formatBuf__anon_1720+0x564>
        const width = unicode.utf8CountCodepoints(buf) catch buf.len;
  10523f:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  105246:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  10524d:	eb 1f                	jmp    10526e <fmt.formatBuf__anon_1720+0x11e>
  10524f:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  105256:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  10525d:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
  105264:	48 89 11             	mov    %rdx,(%rcx)
  105267:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  10526e:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
  105275:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  10527c:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  105283:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
        const padding = if (width < min_width) min_width - width else 0;
  10528a:	48 39 c8             	cmp    %rcx,%rax
  10528d:	73 25                	jae    1052b4 <fmt.formatBuf__anon_1720+0x164>
  10528f:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
  105296:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  10529d:	48 29 c8             	sub    %rcx,%rax
  1052a0:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  1052a7:	0f 92 45 80          	setb   -0x80(%rbp)
  1052ab:	8a 45 80             	mov    -0x80(%rbp),%al
  1052ae:	84 c0                	test   %al,%al
  1052b0:	74 0d                	je     1052bf <fmt.formatBuf__anon_1720+0x16f>
  1052b2:	eb 0d                	jmp    1052c1 <fmt.formatBuf__anon_1720+0x171>
  1052b4:	31 c0                	xor    %eax,%eax
  1052b6:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  1052bd:	eb 32                	jmp    1052f1 <fmt.formatBuf__anon_1720+0x1a1>
  1052bf:	eb 22                	jmp    1052e3 <fmt.formatBuf__anon_1720+0x193>
  1052c1:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1052c8:	00 00 00 
  1052cb:	be 10 00 00 00       	mov    $0x10,%esi
  1052d0:	31 c0                	xor    %eax,%eax
  1052d2:	89 c2                	mov    %eax,%edx
  1052d4:	48 b9 50 0b 10 00 00 	movabs $0x100b50,%rcx
  1052db:	00 00 00 
  1052de:	e8 2d cc ff ff       	callq  101f10 <builtin.default_panic>
  1052e3:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  1052ea:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  1052f1:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  1052f8:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
  1052ff:	48 89 45 88          	mov    %rax,-0x78(%rbp)
        if (padding == 0)
  105303:	48 83 f8 00          	cmp    $0x0,%rax
  105307:	75 39                	jne    105342 <fmt.formatBuf__anon_1720+0x1f2>
  105309:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  105310:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  105317:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10531e:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
            return writer.writeAll(buf);
  105325:	48 8b 00             	mov    (%rax),%rax
  105328:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  10532c:	48 8d 75 98          	lea    -0x68(%rbp),%rsi
  105330:	e8 fb dc ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  105335:	66 89 45 96          	mov    %ax,-0x6a(%rbp)
  105339:	66 83 7d 96 00       	cmpw   $0x0,-0x6a(%rbp)
  10533e:	74 04                	je     105344 <fmt.formatBuf__anon_1720+0x1f4>
  105340:	eb 0f                	jmp    105351 <fmt.formatBuf__anon_1720+0x201>
  105342:	eb 26                	jmp    10536a <fmt.formatBuf__anon_1720+0x21a>
  105344:	66 8b 45 96          	mov    -0x6a(%rbp),%ax
  105348:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  10534f:	5d                   	pop    %rbp
  105350:	c3                   	retq   
  105351:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105358:	e8 83 de ff ff       	callq  1031e0 <builtin.returnError>
  10535d:	66 8b 45 96          	mov    -0x6a(%rbp),%ax
  105361:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105368:	5d                   	pop    %rbp
  105369:	c3                   	retq   
  10536a:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
        switch (options.alignment) {
  105371:	8a 40 20             	mov    0x20(%rax),%al
  105374:	88 85 d7 fe ff ff    	mov    %al,-0x129(%rbp)
  10537a:	2c 02                	sub    $0x2,%al
  10537c:	0f 84 64 02 00 00    	je     1055e6 <fmt.formatBuf__anon_1720+0x496>
  105382:	eb 00                	jmp    105384 <fmt.formatBuf__anon_1720+0x234>
  105384:	8a 85 d7 fe ff ff    	mov    -0x129(%rbp),%al
  10538a:	a8 03                	test   $0x3,%al
  10538c:	74 36                	je     1053c4 <fmt.formatBuf__anon_1720+0x274>
  10538e:	eb 00                	jmp    105390 <fmt.formatBuf__anon_1720+0x240>
  105390:	8a 85 d7 fe ff ff    	mov    -0x129(%rbp),%al
  105396:	24 03                	and    $0x3,%al
  105398:	2c 01                	sub    $0x1,%al
  10539a:	0f 84 d7 00 00 00    	je     105477 <fmt.formatBuf__anon_1720+0x327>
  1053a0:	eb 00                	jmp    1053a2 <fmt.formatBuf__anon_1720+0x252>
  1053a2:	48 bf b3 05 10 00 00 	movabs $0x1005b3,%rdi
  1053a9:	00 00 00 
  1053ac:	be 17 00 00 00       	mov    $0x17,%esi
  1053b1:	31 c0                	xor    %eax,%eax
  1053b3:	89 c2                	mov    %eax,%edx
  1053b5:	48 b9 70 0b 10 00 00 	movabs $0x100b70,%rcx
  1053bc:	00 00 00 
  1053bf:	e8 4c cb ff ff       	callq  101f10 <builtin.default_panic>
  1053c4:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  1053cb:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  1053d2:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  1053d9:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
                try writer.writeAll(buf);
  1053e0:	48 8b 00             	mov    (%rax),%rax
  1053e3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  1053e7:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  1053eb:	e8 40 dc ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  1053f0:	66 89 85 d4 fe ff ff 	mov    %ax,-0x12c(%rbp)
  1053f7:	66 83 f8 00          	cmp    $0x0,%ax
  1053fb:	74 1c                	je     105419 <fmt.formatBuf__anon_1720+0x2c9>
  1053fd:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105404:	e8 d7 dd ff ff       	callq  1031e0 <builtin.returnError>
  105409:	66 8b 85 d4 fe ff ff 	mov    -0x12c(%rbp),%ax
  105410:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105417:	5d                   	pop    %rbp
  105418:	c3                   	retq   
  105419:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
  105420:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  105427:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10542e:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
                try writer.writeByteNTimes(options.fill, padding);
  105435:	48 8b 12             	mov    (%rdx),%rdx
  105438:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  10543c:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
  105440:	0f b6 50 21          	movzbl 0x21(%rax),%edx
  105444:	e8 87 0b 00 00       	callq  105fd0 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes>
  105449:	66 89 85 d2 fe ff ff 	mov    %ax,-0x12e(%rbp)
  105450:	66 83 f8 00          	cmp    $0x0,%ax
  105454:	74 1c                	je     105472 <fmt.formatBuf__anon_1720+0x322>
  105456:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10545d:	e8 7e dd ff ff       	callq  1031e0 <builtin.returnError>
  105462:	66 8b 85 d2 fe ff ff 	mov    -0x12e(%rbp),%ax
  105469:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105470:	5d                   	pop    %rbp
  105471:	c3                   	retq   
  105472:	e9 1f 02 00 00       	jmpq   105696 <fmt.formatBuf__anon_1720+0x546>
  105477:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
                const left_padding = padding / 2;
  10547e:	48 89 c1             	mov    %rax,%rcx
  105481:	48 d1 e9             	shr    %rcx
  105484:	48 89 8d c8 fe ff ff 	mov    %rcx,-0x138(%rbp)
  10548b:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
                const right_padding = (padding + 1) / 2;
  10548f:	48 ff c0             	inc    %rax
  105492:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  105496:	0f 94 45 c0          	sete   -0x40(%rbp)
  10549a:	8a 45 c0             	mov    -0x40(%rbp),%al
  10549d:	84 c0                	test   %al,%al
  10549f:	75 04                	jne    1054a5 <fmt.formatBuf__anon_1720+0x355>
  1054a1:	eb 00                	jmp    1054a3 <fmt.formatBuf__anon_1720+0x353>
  1054a3:	eb 22                	jmp    1054c7 <fmt.formatBuf__anon_1720+0x377>
  1054a5:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  1054ac:	00 00 00 
  1054af:	be 10 00 00 00       	mov    $0x10,%esi
  1054b4:	31 c0                	xor    %eax,%eax
  1054b6:	89 c2                	mov    %eax,%edx
  1054b8:	48 b9 60 0b 10 00 00 	movabs $0x100b60,%rcx
  1054bf:	00 00 00 
  1054c2:	e8 49 ca ff ff       	callq  101f10 <builtin.default_panic>
  1054c7:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
  1054ce:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  1054d5:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  1054dc:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  1054e3:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  1054e7:	48 c1 ee 01          	shr    $0x1,%rsi
  1054eb:	48 89 b5 b8 fe ff ff 	mov    %rsi,-0x148(%rbp)
  1054f2:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
                try writer.writeByteNTimes(options.fill, left_padding);
  1054f6:	48 8b 12             	mov    (%rdx),%rdx
  1054f9:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  1054fd:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  105501:	0f b6 50 21          	movzbl 0x21(%rax),%edx
  105505:	e8 c6 0a 00 00       	callq  105fd0 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes>
  10550a:	66 89 85 c6 fe ff ff 	mov    %ax,-0x13a(%rbp)
  105511:	66 83 f8 00          	cmp    $0x0,%ax
  105515:	74 1c                	je     105533 <fmt.formatBuf__anon_1720+0x3e3>
  105517:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10551e:	e8 bd dc ff ff       	callq  1031e0 <builtin.returnError>
  105523:	66 8b 85 c6 fe ff ff 	mov    -0x13a(%rbp),%ax
  10552a:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105531:	5d                   	pop    %rbp
  105532:	c3                   	retq   
  105533:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  10553a:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  105541:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105548:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
                try writer.writeAll(buf);
  10554f:	48 8b 00             	mov    (%rax),%rax
  105552:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  105556:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  10555a:	e8 d1 da ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  10555f:	66 89 85 b6 fe ff ff 	mov    %ax,-0x14a(%rbp)
  105566:	66 83 f8 00          	cmp    $0x0,%ax
  10556a:	74 1c                	je     105588 <fmt.formatBuf__anon_1720+0x438>
  10556c:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105573:	e8 68 dc ff ff       	callq  1031e0 <builtin.returnError>
  105578:	66 8b 85 b6 fe ff ff 	mov    -0x14a(%rbp),%ax
  10557f:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105586:	5d                   	pop    %rbp
  105587:	c3                   	retq   
  105588:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  10558f:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  105596:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10559d:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
                try writer.writeByteNTimes(options.fill, right_padding);
  1055a4:	48 8b 12             	mov    (%rdx),%rdx
  1055a7:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  1055ab:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  1055af:	0f b6 50 21          	movzbl 0x21(%rax),%edx
  1055b3:	e8 18 0a 00 00       	callq  105fd0 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes>
  1055b8:	66 89 85 b4 fe ff ff 	mov    %ax,-0x14c(%rbp)
  1055bf:	66 83 f8 00          	cmp    $0x0,%ax
  1055c3:	74 1c                	je     1055e1 <fmt.formatBuf__anon_1720+0x491>
  1055c5:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  1055cc:	e8 0f dc ff ff       	callq  1031e0 <builtin.returnError>
  1055d1:	66 8b 85 b4 fe ff ff 	mov    -0x14c(%rbp),%ax
  1055d8:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  1055df:	5d                   	pop    %rbp
  1055e0:	c3                   	retq   
  1055e1:	e9 b0 00 00 00       	jmpq   105696 <fmt.formatBuf__anon_1720+0x546>
  1055e6:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
  1055ed:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  1055f4:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  1055fb:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
                try writer.writeByteNTimes(options.fill, padding);
  105602:	48 8b 12             	mov    (%rdx),%rdx
  105605:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  105609:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  10560d:	0f b6 50 21          	movzbl 0x21(%rax),%edx
  105611:	e8 ba 09 00 00       	callq  105fd0 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes>
  105616:	66 89 85 b2 fe ff ff 	mov    %ax,-0x14e(%rbp)
  10561d:	66 83 f8 00          	cmp    $0x0,%ax
  105621:	74 1c                	je     10563f <fmt.formatBuf__anon_1720+0x4ef>
  105623:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10562a:	e8 b1 db ff ff       	callq  1031e0 <builtin.returnError>
  10562f:	66 8b 85 b2 fe ff ff 	mov    -0x14e(%rbp),%ax
  105636:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  10563d:	5d                   	pop    %rbp
  10563e:	c3                   	retq   
  10563f:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
  105646:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  10564d:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  105654:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
                try writer.writeAll(buf);
  10565b:	48 8b 00             	mov    (%rax),%rax
  10565e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  105662:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  105666:	e8 c5 d9 ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  10566b:	66 89 85 b0 fe ff ff 	mov    %ax,-0x150(%rbp)
  105672:	66 83 f8 00          	cmp    $0x0,%ax
  105676:	74 1c                	je     105694 <fmt.formatBuf__anon_1720+0x544>
  105678:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
  10567f:	e8 5c db ff ff       	callq  1031e0 <builtin.returnError>
  105684:	66 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%ax
  10568b:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  105692:	5d                   	pop    %rbp
  105693:	c3                   	retq   
  105694:	eb 00                	jmp    105696 <fmt.formatBuf__anon_1720+0x546>
        switch (options.alignment) {
  105696:	eb 1e                	jmp    1056b6 <fmt.formatBuf__anon_1720+0x566>
  105698:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
        try writer.writeAll(buf);
  10569f:	e8 3c db ff ff       	callq  1031e0 <builtin.returnError>
  1056a4:	66 8b 85 fe fe ff ff 	mov    -0x102(%rbp),%ax
  1056ab:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  1056b2:	5d                   	pop    %rbp
  1056b3:	c3                   	retq   
  1056b4:	eb 00                	jmp    1056b6 <fmt.formatBuf__anon_1720+0x566>
  1056b6:	31 c0                	xor    %eax,%eax
  1056b8:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  1056bf:	5d                   	pop    %rbp
  1056c0:	c3                   	retq   
  1056c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1056c8:	00 00 00 
  1056cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000001056d0 <unicode.utf8ByteSequenceLength>:
}

/// Given the first byte of a UTF-8 codepoint,
/// returns a number 1-4 indicating the total length of the codepoint in bytes.
/// If this byte does not match the form of a UTF-8 start byte, returns Utf8InvalidStartByte.
pub fn utf8ByteSequenceLength(first_byte: u8) !u3 {
  1056d0:	55                   	push   %rbp
  1056d1:	48 89 e5             	mov    %rsp,%rbp
  1056d4:	48 83 ec 30          	sub    $0x30,%rsp
  1056d8:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  1056dc:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  1056e0:	88 d0                	mov    %dl,%al
  1056e2:	88 45 ef             	mov    %al,-0x11(%rbp)
  1056e5:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  1056e9:	88 45 ff             	mov    %al,-0x1(%rbp)
  1056ec:	8a 4d ef             	mov    -0x11(%rbp),%cl
    // The switch is optimized much better than a "smart" approach using @clz
    return switch (first_byte) {
  1056ef:	80 f9 00             	cmp    $0x0,%cl
  1056f2:	0f 93 c0             	setae  %al
  1056f5:	80 f9 7f             	cmp    $0x7f,%cl
  1056f8:	0f 96 c1             	setbe  %cl
  1056fb:	20 c8                	and    %cl,%al
  1056fd:	a8 01                	test   $0x1,%al
  1056ff:	75 02                	jne    105703 <unicode.utf8ByteSequenceLength+0x33>
  105701:	eb 0f                	jmp    105712 <unicode.utf8ByteSequenceLength+0x42>
  105703:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105707:	8b 0c 25 d4 0c 10 00 	mov    0x100cd4,%ecx
  10570e:	89 08                	mov    %ecx,(%rax)
  105710:	eb 7f                	jmp    105791 <unicode.utf8ByteSequenceLength+0xc1>
  105712:	8a 4d ef             	mov    -0x11(%rbp),%cl
  105715:	80 f9 c0             	cmp    $0xc0,%cl
  105718:	0f 93 c0             	setae  %al
  10571b:	80 f9 df             	cmp    $0xdf,%cl
  10571e:	0f 96 c1             	setbe  %cl
  105721:	20 c8                	and    %cl,%al
  105723:	a8 01                	test   $0x1,%al
  105725:	75 02                	jne    105729 <unicode.utf8ByteSequenceLength+0x59>
  105727:	eb 0f                	jmp    105738 <unicode.utf8ByteSequenceLength+0x68>
  105729:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  10572d:	8b 0c 25 d8 0c 10 00 	mov    0x100cd8,%ecx
  105734:	89 08                	mov    %ecx,(%rax)
  105736:	eb 59                	jmp    105791 <unicode.utf8ByteSequenceLength+0xc1>
  105738:	8a 4d ef             	mov    -0x11(%rbp),%cl
  10573b:	80 f9 e0             	cmp    $0xe0,%cl
  10573e:	0f 93 c0             	setae  %al
  105741:	80 f9 ef             	cmp    $0xef,%cl
  105744:	0f 96 c1             	setbe  %cl
  105747:	20 c8                	and    %cl,%al
  105749:	a8 01                	test   $0x1,%al
  10574b:	75 02                	jne    10574f <unicode.utf8ByteSequenceLength+0x7f>
  10574d:	eb 0f                	jmp    10575e <unicode.utf8ByteSequenceLength+0x8e>
  10574f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105753:	8b 0c 25 dc 0c 10 00 	mov    0x100cdc,%ecx
  10575a:	89 08                	mov    %ecx,(%rax)
  10575c:	eb 33                	jmp    105791 <unicode.utf8ByteSequenceLength+0xc1>
  10575e:	8a 4d ef             	mov    -0x11(%rbp),%cl
  105761:	80 f9 f0             	cmp    $0xf0,%cl
  105764:	0f 93 c0             	setae  %al
  105767:	80 f9 f7             	cmp    $0xf7,%cl
  10576a:	0f 96 c1             	setbe  %cl
  10576d:	20 c8                	and    %cl,%al
  10576f:	a8 01                	test   $0x1,%al
  105771:	75 02                	jne    105775 <unicode.utf8ByteSequenceLength+0xa5>
  105773:	eb 0f                	jmp    105784 <unicode.utf8ByteSequenceLength+0xb4>
  105775:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105779:	8b 0c 25 e0 0c 10 00 	mov    0x100ce0,%ecx
  105780:	89 08                	mov    %ecx,(%rax)
  105782:	eb 0d                	jmp    105791 <unicode.utf8ByteSequenceLength+0xc1>
  105784:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105788:	8b 0c 25 e4 0c 10 00 	mov    0x100ce4,%ecx
  10578f:	89 08                	mov    %ecx,(%rax)
  105791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105795:	66 83 38 00          	cmpw   $0x0,(%rax)
  105799:	75 0a                	jne    1057a5 <unicode.utf8ByteSequenceLength+0xd5>
  10579b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10579f:	48 83 c4 30          	add    $0x30,%rsp
  1057a3:	5d                   	pop    %rbp
  1057a4:	c3                   	retq   
  1057a5:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  1057a9:	e8 32 da ff ff       	callq  1031e0 <builtin.returnError>
  1057ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1057b2:	48 83 c4 30          	add    $0x30,%rsp
  1057b6:	5d                   	pop    %rbp
  1057b7:	c3                   	retq   
  1057b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1057bf:	00 

00000000001057c0 <unicode.utf8CountCodepoints>:
    };
}

/// Returns the length of a supplied UTF-8 string literal in terms of unicode
/// codepoints.
pub fn utf8CountCodepoints(s: []const u8) !usize {
  1057c0:	55                   	push   %rbp
  1057c1:	48 89 e5             	mov    %rsp,%rbp
  1057c4:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
  1057cb:	48 89 b5 c8 fe ff ff 	mov    %rsi,-0x138(%rbp)
  1057d2:	48 89 bd d0 fe ff ff 	mov    %rdi,-0x130(%rbp)
  1057d9:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  1057e0:	48 89 c8             	mov    %rcx,%rax
  1057e3:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  1057ea:	48 89 d0             	mov    %rdx,%rax
  1057ed:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  1057f4:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
  1057fb:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
    var len: usize = 0;
  105802:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
  105809:	00 00 00 00 

    const N = @sizeOf(usize);
    const MASK = 0x80 * (std.math.maxInt(usize) / 0xff);

    var i: usize = 0;
  10580d:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
  105814:	00 00 00 00 
  105818:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
    while (i < s.len) {
  10581f:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105826:	48 39 c8             	cmp    %rcx,%rax
  105829:	73 02                	jae    10582d <unicode.utf8CountCodepoints+0x6d>
  10582b:	eb 05                	jmp    105832 <unicode.utf8CountCodepoints+0x72>
                1 => {}, // ASCII, no validation needed
                else => _ = try utf8Decode(s[i .. i + n]),
            }

            i += n;
            len += 1;
  10582d:	e9 fc 05 00 00       	jmpq   105e2e <unicode.utf8CountCodepoints+0x66e>
        while (i + N <= s.len) : (i += N) {
  105832:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105839:	48 83 c0 08          	add    $0x8,%rax
  10583d:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  105844:	0f 92 85 18 ff ff ff 	setb   -0xe8(%rbp)
  10584b:	8a 85 18 ff ff ff    	mov    -0xe8(%rbp),%al
  105851:	84 c0                	test   %al,%al
  105853:	75 04                	jne    105859 <unicode.utf8CountCodepoints+0x99>
  105855:	eb 00                	jmp    105857 <unicode.utf8CountCodepoints+0x97>
  105857:	eb 22                	jmp    10587b <unicode.utf8CountCodepoints+0xbb>
  105859:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105860:	00 00 00 
  105863:	be 10 00 00 00       	mov    $0x10,%esi
  105868:	31 c0                	xor    %eax,%eax
  10586a:	89 c2                	mov    %eax,%edx
  10586c:	48 b9 d0 0a 10 00 00 	movabs $0x100ad0,%rcx
  105873:	00 00 00 
  105876:	e8 95 c6 ff ff       	callq  101f10 <builtin.default_panic>
  10587b:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
  105882:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  105889:	48 39 c8             	cmp    %rcx,%rax
  10588c:	77 50                	ja     1058de <unicode.utf8CountCodepoints+0x11e>
  10588e:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  105895:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
            const v = mem.readIntNative(usize, s[i..][0..N]);
  10589c:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
  1058a3:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  1058aa:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  1058b1:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
  1058b8:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
  1058bf:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
  1058c6:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  1058cd:	48 01 c2             	add    %rax,%rdx
  1058d0:	48 89 95 c0 fe ff ff 	mov    %rdx,-0x140(%rbp)
  1058d7:	48 39 c8             	cmp    %rcx,%rax
  1058da:	76 07                	jbe    1058e3 <unicode.utf8CountCodepoints+0x123>
  1058dc:	eb 07                	jmp    1058e5 <unicode.utf8CountCodepoints+0x125>
        while (i + N <= s.len) : (i += N) {
  1058de:	e9 c2 01 00 00       	jmpq   105aa5 <unicode.utf8CountCodepoints+0x2e5>
            const v = mem.readIntNative(usize, s[i..][0..N]);
  1058e3:	eb 13                	jmp    1058f8 <unicode.utf8CountCodepoints+0x138>
  1058e5:	48 8b b5 b8 fe ff ff 	mov    -0x148(%rbp),%rsi
  1058ec:	48 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%rdi
  1058f3:	e8 c8 d0 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1058f8:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  1058ff:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  105906:	48 89 c1             	mov    %rax,%rcx
  105909:	48 29 d1             	sub    %rdx,%rcx
  10590c:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
  105913:	48 39 c0             	cmp    %rax,%rax
  105916:	77 02                	ja     10591a <unicode.utf8CountCodepoints+0x15a>
  105918:	eb 0f                	jmp    105929 <unicode.utf8CountCodepoints+0x169>
  10591a:	48 8b b5 b8 fe ff ff 	mov    -0x148(%rbp),%rsi
  105921:	48 89 f7             	mov    %rsi,%rdi
  105924:	e8 c7 c4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105929:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  105930:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  105937:	48 39 c8             	cmp    %rcx,%rax
  10593a:	77 02                	ja     10593e <unicode.utf8CountCodepoints+0x17e>
  10593c:	eb 13                	jmp    105951 <unicode.utf8CountCodepoints+0x191>
  10593e:	48 8b b5 b8 fe ff ff 	mov    -0x148(%rbp),%rsi
  105945:	48 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%rdi
  10594c:	e8 9f c4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105951:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  105958:	48 8b 8d a8 fe ff ff 	mov    -0x158(%rbp),%rcx
  10595f:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
  105966:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  10596d:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  105974:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  10597b:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  105982:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  105989:	b0 01                	mov    $0x1,%al
  10598b:	a8 01                	test   $0x1,%al
  10598d:	75 02                	jne    105991 <unicode.utf8CountCodepoints+0x1d1>
  10598f:	eb 02                	jmp    105993 <unicode.utf8CountCodepoints+0x1d3>
  105991:	eb 0e                	jmp    1059a1 <unicode.utf8CountCodepoints+0x1e1>
  105993:	31 c0                	xor    %eax,%eax
  105995:	89 c7                	mov    %eax,%edi
  105997:	be 08 00 00 00       	mov    $0x8,%esi
  10599c:	e8 1f d0 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1059a1:	48 8b 8d a0 fe ff ff 	mov    -0x160(%rbp),%rcx
  1059a8:	b8 08 00 00 00       	mov    $0x8,%eax
  1059ad:	48 39 c8             	cmp    %rcx,%rax
  1059b0:	77 02                	ja     1059b4 <unicode.utf8CountCodepoints+0x1f4>
  1059b2:	eb 11                	jmp    1059c5 <unicode.utf8CountCodepoints+0x205>
  1059b4:	48 8b b5 a0 fe ff ff 	mov    -0x160(%rbp),%rsi
  1059bb:	bf 08 00 00 00       	mov    $0x8,%edi
  1059c0:	e8 2b c4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1059c5:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
  1059cc:	e8 9f 04 00 00       	callq  105e70 <mem.readIntNative__anon_1794>
  1059d1:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
            if (v & MASK != 0) break;
  1059d8:	48 b9 80 80 80 80 80 	movabs $0x8080808080808080,%rcx
  1059df:	80 80 80 
  1059e2:	48 21 c8             	and    %rcx,%rax
  1059e5:	48 83 f8 00          	cmp    $0x0,%rax
  1059e9:	74 05                	je     1059f0 <unicode.utf8CountCodepoints+0x230>
  1059eb:	e9 b5 00 00 00       	jmpq   105aa5 <unicode.utf8CountCodepoints+0x2e5>
  1059f0:	eb 00                	jmp    1059f2 <unicode.utf8CountCodepoints+0x232>
            len += N;
  1059f2:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  1059f9:	48 83 c0 08          	add    $0x8,%rax
  1059fd:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  105a04:	0f 92 85 50 ff ff ff 	setb   -0xb0(%rbp)
  105a0b:	8a 85 50 ff ff ff    	mov    -0xb0(%rbp),%al
  105a11:	84 c0                	test   %al,%al
  105a13:	75 04                	jne    105a19 <unicode.utf8CountCodepoints+0x259>
  105a15:	eb 00                	jmp    105a17 <unicode.utf8CountCodepoints+0x257>
  105a17:	eb 22                	jmp    105a3b <unicode.utf8CountCodepoints+0x27b>
  105a19:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105a20:	00 00 00 
  105a23:	be 10 00 00 00       	mov    $0x10,%esi
  105a28:	31 c0                	xor    %eax,%eax
  105a2a:	89 c2                	mov    %eax,%edx
  105a2c:	48 b9 e0 0a 10 00 00 	movabs $0x100ae0,%rcx
  105a33:	00 00 00 
  105a36:	e8 d5 c4 ff ff       	callq  101f10 <builtin.default_panic>
  105a3b:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  105a42:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
        while (i + N <= s.len) : (i += N) {
  105a49:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105a50:	48 83 c0 08          	add    $0x8,%rax
  105a54:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  105a5b:	0f 92 85 60 ff ff ff 	setb   -0xa0(%rbp)
  105a62:	8a 85 60 ff ff ff    	mov    -0xa0(%rbp),%al
  105a68:	84 c0                	test   %al,%al
  105a6a:	75 04                	jne    105a70 <unicode.utf8CountCodepoints+0x2b0>
  105a6c:	eb 00                	jmp    105a6e <unicode.utf8CountCodepoints+0x2ae>
  105a6e:	eb 22                	jmp    105a92 <unicode.utf8CountCodepoints+0x2d2>
  105a70:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105a77:	00 00 00 
  105a7a:	be 10 00 00 00       	mov    $0x10,%esi
  105a7f:	31 c0                	xor    %eax,%eax
  105a81:	89 c2                	mov    %eax,%edx
  105a83:	48 b9 f0 0a 10 00 00 	movabs $0x100af0,%rcx
  105a8a:	00 00 00 
  105a8d:	e8 7e c4 ff ff       	callq  101f10 <builtin.default_panic>
  105a92:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  105a99:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  105aa0:	e9 8d fd ff ff       	jmpq   105832 <unicode.utf8CountCodepoints+0x72>
  105aa5:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
        if (i < s.len) {
  105aac:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105ab3:	48 39 c8             	cmp    %rcx,%rax
  105ab6:	73 1c                	jae    105ad4 <unicode.utf8CountCodepoints+0x314>
  105ab8:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
            const n = try utf8ByteSequenceLength(s[i]);
  105abf:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105ac6:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
  105acd:	48 39 c8             	cmp    %rcx,%rax
  105ad0:	72 07                	jb     105ad9 <unicode.utf8CountCodepoints+0x319>
  105ad2:	eb 07                	jmp    105adb <unicode.utf8CountCodepoints+0x31b>
            len += 1;
  105ad4:	e9 4e 03 00 00       	jmpq   105e27 <unicode.utf8CountCodepoints+0x667>
            const n = try utf8ByteSequenceLength(s[i]);
  105ad9:	eb 13                	jmp    105aee <unicode.utf8CountCodepoints+0x32e>
  105adb:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
  105ae2:	48 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%rdi
  105ae9:	e8 02 c3 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105aee:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  105af5:	48 8b 8d 90 fe ff ff 	mov    -0x170(%rbp),%rcx
  105afc:	48 8b b5 c8 fe ff ff 	mov    -0x138(%rbp),%rsi
  105b03:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
  105b0a:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
  105b0e:	e8 bd fb ff ff       	callq  1056d0 <unicode.utf8ByteSequenceLength>
  105b13:	66 83 bd 68 ff ff ff 	cmpw   $0x0,-0x98(%rbp)
  105b1a:	00 
  105b1b:	74 46                	je     105b63 <unicode.utf8CountCodepoints+0x3a3>
  105b1d:	48 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%rdi
  105b24:	66 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%ax
  105b2b:	66 89 85 78 ff ff ff 	mov    %ax,-0x88(%rbp)
  105b32:	e8 a9 d6 ff ff       	callq  1031e0 <builtin.returnError>
  105b37:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
  105b3e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  105b45:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  105b4c:	48 89 11             	mov    %rdx,(%rcx)
  105b4f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  105b56:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  105b5a:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
  105b61:	5d                   	pop    %rbp
  105b62:	c3                   	retq   
  105b63:	0f b6 85 6a ff ff ff 	movzbl -0x96(%rbp),%eax
  105b6a:	89 c1                	mov    %eax,%ecx
  105b6c:	88 c8                	mov    %cl,%al
  105b6e:	88 85 8f fe ff ff    	mov    %al,-0x171(%rbp)
  105b74:	88 45 87             	mov    %al,-0x79(%rbp)
            if (i + n > s.len) return error.TruncatedInput;
  105b77:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105b7e:	48 01 c8             	add    %rcx,%rax
  105b81:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  105b85:	0f 92 45 90          	setb   -0x70(%rbp)
  105b89:	8a 45 90             	mov    -0x70(%rbp),%al
  105b8c:	84 c0                	test   %al,%al
  105b8e:	75 04                	jne    105b94 <unicode.utf8CountCodepoints+0x3d4>
  105b90:	eb 00                	jmp    105b92 <unicode.utf8CountCodepoints+0x3d2>
  105b92:	eb 22                	jmp    105bb6 <unicode.utf8CountCodepoints+0x3f6>
  105b94:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105b9b:	00 00 00 
  105b9e:	be 10 00 00 00       	mov    $0x10,%esi
  105ba3:	31 c0                	xor    %eax,%eax
  105ba5:	89 c2                	mov    %eax,%edx
  105ba7:	48 b9 00 0b 10 00 00 	movabs $0x100b00,%rcx
  105bae:	00 00 00 
  105bb1:	e8 5a c3 ff ff       	callq  101f10 <builtin.default_panic>
  105bb6:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
  105bbd:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  105bc1:	48 39 c8             	cmp    %rcx,%rax
  105bc4:	76 3a                	jbe    105c00 <unicode.utf8CountCodepoints+0x440>
  105bc6:	48 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%rdi
  105bcd:	e8 0e d6 ff ff       	callq  1031e0 <builtin.returnError>
  105bd2:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
  105bd9:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  105be0:	48 8b 14 25 10 0b 10 	mov    0x100b10,%rdx
  105be7:	00 
  105be8:	48 89 11             	mov    %rdx,(%rcx)
  105beb:	48 8b 14 25 18 0b 10 	mov    0x100b18,%rdx
  105bf2:	00 
  105bf3:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  105bf7:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
  105bfe:	5d                   	pop    %rbp
  105bff:	c3                   	retq   
  105c00:	eb 00                	jmp    105c02 <unicode.utf8CountCodepoints+0x442>
  105c02:	8a 85 8f fe ff ff    	mov    -0x171(%rbp),%al
            switch (n) {
  105c08:	24 07                	and    $0x7,%al
  105c0a:	2c 01                	sub    $0x1,%al
  105c0c:	74 46                	je     105c54 <unicode.utf8CountCodepoints+0x494>
  105c0e:	eb 00                	jmp    105c10 <unicode.utf8CountCodepoints+0x450>
  105c10:	8a 8d 8f fe ff ff    	mov    -0x171(%rbp),%cl
  105c16:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  105c1d:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
                else => _ = try utf8Decode(s[i .. i + n]),
  105c24:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  105c28:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  105c2c:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105c33:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
  105c3a:	0f b6 c9             	movzbl %cl,%ecx
  105c3d:	83 e1 07             	and    $0x7,%ecx
  105c40:	48 01 c8             	add    %rcx,%rax
  105c43:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  105c47:	0f 92 45 b0          	setb   -0x50(%rbp)
  105c4b:	8a 45 b0             	mov    -0x50(%rbp),%al
  105c4e:	84 c0                	test   %al,%al
  105c50:	74 07                	je     105c59 <unicode.utf8CountCodepoints+0x499>
  105c52:	eb 07                	jmp    105c5b <unicode.utf8CountCodepoints+0x49b>
            switch (n) {
  105c54:	e9 2e 01 00 00       	jmpq   105d87 <unicode.utf8CountCodepoints+0x5c7>
                else => _ = try utf8Decode(s[i .. i + n]),
  105c59:	eb 22                	jmp    105c7d <unicode.utf8CountCodepoints+0x4bd>
  105c5b:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105c62:	00 00 00 
  105c65:	be 10 00 00 00       	mov    $0x10,%esi
  105c6a:	31 c0                	xor    %eax,%eax
  105c6c:	89 c2                	mov    %eax,%edx
  105c6e:	48 b9 20 0b 10 00 00 	movabs $0x100b20,%rcx
  105c75:	00 00 00 
  105c78:	e8 93 c2 ff ff       	callq  101f10 <builtin.default_panic>
  105c7d:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  105c84:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  105c88:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
  105c8f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  105c93:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  105c97:	48 89 b5 70 fe ff ff 	mov    %rsi,-0x190(%rbp)
  105c9e:	48 01 c2             	add    %rax,%rdx
  105ca1:	48 89 95 78 fe ff ff 	mov    %rdx,-0x188(%rbp)
  105ca8:	48 39 c8             	cmp    %rcx,%rax
  105cab:	77 02                	ja     105caf <unicode.utf8CountCodepoints+0x4ef>
  105cad:	eb 13                	jmp    105cc2 <unicode.utf8CountCodepoints+0x502>
  105caf:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  105cb6:	48 8b bd 80 fe ff ff 	mov    -0x180(%rbp),%rdi
  105cbd:	e8 fe cc ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  105cc2:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
  105cc9:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
  105cd0:	48 8b b5 80 fe ff ff 	mov    -0x180(%rbp),%rsi
  105cd7:	48 89 c2             	mov    %rax,%rdx
  105cda:	48 29 f2             	sub    %rsi,%rdx
  105cdd:	48 89 95 60 fe ff ff 	mov    %rdx,-0x1a0(%rbp)
  105ce4:	48 39 c8             	cmp    %rcx,%rax
  105ce7:	77 02                	ja     105ceb <unicode.utf8CountCodepoints+0x52b>
  105ce9:	eb 13                	jmp    105cfe <unicode.utf8CountCodepoints+0x53e>
  105ceb:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
  105cf2:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
  105cf9:	e8 f2 c0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105cfe:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  105d05:	48 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%rcx
  105d0c:	48 39 c8             	cmp    %rcx,%rax
  105d0f:	77 02                	ja     105d13 <unicode.utf8CountCodepoints+0x553>
  105d11:	eb 13                	jmp    105d26 <unicode.utf8CountCodepoints+0x566>
  105d13:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  105d1a:	48 8b bd 80 fe ff ff 	mov    -0x180(%rbp),%rdi
  105d21:	e8 ca c0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105d26:	48 8b b5 c8 fe ff ff 	mov    -0x138(%rbp),%rsi
  105d2d:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
  105d34:	48 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%rcx
  105d3b:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  105d3f:	e8 4c 01 00 00       	callq  105e90 <unicode.utf8Decode>
  105d44:	66 83 7d bc 00       	cmpw   $0x0,-0x44(%rbp)
  105d49:	74 3a                	je     105d85 <unicode.utf8CountCodepoints+0x5c5>
  105d4b:	48 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%rdi
  105d52:	66 8b 45 bc          	mov    -0x44(%rbp),%ax
  105d56:	66 89 45 c8          	mov    %ax,-0x38(%rbp)
  105d5a:	e8 81 d4 ff ff       	callq  1031e0 <builtin.returnError>
  105d5f:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
  105d66:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  105d6d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  105d71:	48 89 11             	mov    %rdx,(%rcx)
  105d74:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  105d78:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  105d7c:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
  105d83:	5d                   	pop    %rbp
  105d84:	c3                   	retq   
  105d85:	eb 00                	jmp    105d87 <unicode.utf8CountCodepoints+0x5c7>
  105d87:	8a 8d 8f fe ff ff    	mov    -0x171(%rbp),%cl
            i += n;
  105d8d:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  105d94:	0f b6 c9             	movzbl %cl,%ecx
  105d97:	83 e1 07             	and    $0x7,%ecx
  105d9a:	48 01 c8             	add    %rcx,%rax
  105d9d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  105da1:	0f 92 45 d8          	setb   -0x28(%rbp)
  105da5:	8a 45 d8             	mov    -0x28(%rbp),%al
  105da8:	84 c0                	test   %al,%al
  105daa:	75 04                	jne    105db0 <unicode.utf8CountCodepoints+0x5f0>
  105dac:	eb 00                	jmp    105dae <unicode.utf8CountCodepoints+0x5ee>
  105dae:	eb 22                	jmp    105dd2 <unicode.utf8CountCodepoints+0x612>
  105db0:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105db7:	00 00 00 
  105dba:	be 10 00 00 00       	mov    $0x10,%esi
  105dbf:	31 c0                	xor    %eax,%eax
  105dc1:	89 c2                	mov    %eax,%edx
  105dc3:	48 b9 30 0b 10 00 00 	movabs $0x100b30,%rcx
  105dca:	00 00 00 
  105dcd:	e8 3e c1 ff ff       	callq  101f10 <builtin.default_panic>
  105dd2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  105dd6:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
            len += 1;
  105ddd:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  105de4:	48 ff c0             	inc    %rax
  105de7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  105deb:	0f 94 45 e8          	sete   -0x18(%rbp)
  105def:	8a 45 e8             	mov    -0x18(%rbp),%al
  105df2:	84 c0                	test   %al,%al
  105df4:	75 04                	jne    105dfa <unicode.utf8CountCodepoints+0x63a>
  105df6:	eb 00                	jmp    105df8 <unicode.utf8CountCodepoints+0x638>
  105df8:	eb 22                	jmp    105e1c <unicode.utf8CountCodepoints+0x65c>
  105dfa:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  105e01:	00 00 00 
  105e04:	be 10 00 00 00       	mov    $0x10,%esi
  105e09:	31 c0                	xor    %eax,%eax
  105e0b:	89 c2                	mov    %eax,%edx
  105e0d:	48 b9 40 0b 10 00 00 	movabs $0x100b40,%rcx
  105e14:	00 00 00 
  105e17:	e8 f4 c0 ff ff       	callq  101f10 <builtin.default_panic>
  105e1c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  105e20:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  105e27:	eb 00                	jmp    105e29 <unicode.utf8CountCodepoints+0x669>
  105e29:	e9 ea f9 ff ff       	jmpq   105818 <unicode.utf8CountCodepoints+0x58>
  105e2e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  105e35:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
        }
    }

    return len;
  105e3c:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  105e43:	66 c7 45 f8 00 00    	movw   $0x0,-0x8(%rbp)
  105e49:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  105e4d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  105e51:	48 89 11             	mov    %rdx,(%rcx)
  105e54:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  105e58:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  105e5c:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
  105e63:	5d                   	pop    %rbp
  105e64:	c3                   	retq   
  105e65:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  105e6c:	00 00 00 
  105e6f:	90                   	nop

0000000000105e70 <mem.readIntNative__anon_1794>:
/// Reads an integer from memory with bit count specified by T.
/// The bit count of T must be evenly divisible by 8.
/// This function cannot fail and cannot cause undefined behavior.
/// Assumes the endianness of memory is native. This means the function can
/// simply pointer cast memory.
pub fn readIntNative(comptime T: type, bytes: *const [@divExact(@typeInfo(T).Int.bits, 8)]u8) T {
  105e70:	55                   	push   %rbp
  105e71:	48 89 e5             	mov    %rsp,%rbp
  105e74:	50                   	push   %rax
  105e75:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return @ptrCast(*align(1) const T, bytes).*;
  105e79:	48 8b 07             	mov    (%rdi),%rax
  105e7c:	48 83 c4 08          	add    $0x8,%rsp
  105e80:	5d                   	pop    %rbp
  105e81:	c3                   	retq   
  105e82:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  105e89:	00 00 00 
  105e8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000105e90 <unicode.utf8Decode>:
pub fn utf8Decode(bytes: []const u8) Utf8DecodeError!u21 {
  105e90:	55                   	push   %rbp
  105e91:	48 89 e5             	mov    %rsp,%rbp
  105e94:	48 83 ec 60          	sub    $0x60,%rsp
  105e98:	48 89 c8             	mov    %rcx,%rax
  105e9b:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  105e9f:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  105ea3:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  105ea7:	48 89 c1             	mov    %rax,%rcx
  105eaa:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  105eae:	48 89 d1             	mov    %rdx,%rcx
  105eb1:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  105eb5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  105eb9:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    return switch (bytes.len) {
  105ebd:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  105ec1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  105ec5:	48 83 e8 03          	sub    $0x3,%rax
  105ec9:	77 0e                	ja     105ed9 <unicode.utf8Decode+0x49>
  105ecb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  105ecf:	48 8b 04 c5 58 01 10 	mov    0x100158(,%rax,8),%rax
  105ed6:	00 
  105ed7:	ff e0                	jmpq   *%rax
        else => unreachable,
  105ed9:	48 bf 03 06 10 00 00 	movabs $0x100603,%rdi
  105ee0:	00 00 00 
  105ee3:	be 18 00 00 00       	mov    $0x18,%esi
  105ee8:	31 c0                	xor    %eax,%eax
  105eea:	89 c2                	mov    %eax,%edx
  105eec:	48 b9 e0 0b 10 00 00 	movabs $0x100be0,%rcx
  105ef3:	00 00 00 
  105ef6:	e8 15 c0 ff ff       	callq  101f10 <builtin.default_panic>
  105efb:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
        1 => @as(u21, bytes[0]),
  105eff:	31 c0                	xor    %eax,%eax
  105f01:	48 39 c8             	cmp    %rcx,%rax
  105f04:	73 02                	jae    105f08 <unicode.utf8Decode+0x78>
  105f06:	eb 0d                	jmp    105f15 <unicode.utf8Decode+0x85>
  105f08:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  105f0c:	31 c0                	xor    %eax,%eax
  105f0e:	89 c7                	mov    %eax,%edi
  105f10:	e8 db be ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  105f15:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  105f19:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  105f1d:	0f b6 09             	movzbl (%rcx),%ecx
  105f20:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%rbp)
  105f26:	66 89 4d e0          	mov    %cx,-0x20(%rbp)
  105f2a:	c6 45 e2 00          	movb   $0x0,-0x1e(%rbp)
  105f2e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  105f32:	48 89 08             	mov    %rcx,(%rax)
  105f35:	eb 64                	jmp    105f9b <unicode.utf8Decode+0x10b>
  105f37:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  105f3b:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  105f3f:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
        2 => utf8Decode2(bytes),
  105f43:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
  105f47:	e8 34 04 00 00       	callq  106380 <unicode.utf8Decode2>
  105f4c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  105f50:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  105f54:	48 89 08             	mov    %rcx,(%rax)
  105f57:	eb 42                	jmp    105f9b <unicode.utf8Decode+0x10b>
  105f59:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  105f5d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  105f61:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
        3 => utf8Decode3(bytes),
  105f65:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  105f69:	e8 02 06 00 00       	callq  106570 <unicode.utf8Decode3>
  105f6e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  105f72:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  105f76:	48 89 08             	mov    %rcx,(%rax)
  105f79:	eb 20                	jmp    105f9b <unicode.utf8Decode+0x10b>
  105f7b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  105f7f:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  105f83:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
        4 => utf8Decode4(bytes),
  105f87:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
  105f8b:	e8 20 09 00 00       	callq  1068b0 <unicode.utf8Decode4>
  105f90:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  105f94:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  105f98:	48 89 08             	mov    %rcx,(%rax)
  105f9b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    return switch (bytes.len) {
  105f9f:	66 83 78 04 00       	cmpw   $0x0,0x4(%rax)
  105fa4:	75 0a                	jne    105fb0 <unicode.utf8Decode+0x120>
  105fa6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  105faa:	48 83 c4 60          	add    $0x60,%rsp
  105fae:	5d                   	pop    %rbp
  105faf:	c3                   	retq   
  105fb0:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  105fb4:	e8 27 d2 ff ff       	callq  1031e0 <builtin.returnError>
  105fb9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  105fbd:	48 83 c4 60          	add    $0x60,%rsp
  105fc1:	5d                   	pop    %rbp
  105fc2:	c3                   	retq   
  105fc3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  105fca:	00 00 00 
  105fcd:	0f 1f 00             	nopl   (%rax)

0000000000105fd0 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes>:
        pub fn writeByte(self: Self, byte: u8) Error!void {
            const array = [1]u8{byte};
            return self.writeAll(&array);
        }

        pub fn writeByteNTimes(self: Self, byte: u8, n: usize) Error!void {
  105fd0:	55                   	push   %rbp
  105fd1:	48 89 e5             	mov    %rsp,%rbp
  105fd4:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  105fdb:	48 89 8d 90 fe ff ff 	mov    %rcx,-0x170(%rbp)
  105fe2:	48 89 b5 98 fe ff ff 	mov    %rsi,-0x168(%rbp)
  105fe9:	48 89 bd a0 fe ff ff 	mov    %rdi,-0x160(%rbp)
  105ff0:	88 d0                	mov    %dl,%al
  105ff2:	88 85 af fe ff ff    	mov    %al,-0x151(%rbp)
  105ff8:	88 85 bf fe ff ff    	mov    %al,-0x141(%rbp)
  105ffe:	48 89 8d c0 fe ff ff 	mov    %rcx,-0x140(%rbp)
            var bytes: [256]u8 = undefined;
  106005:	48 8d bd c8 fe ff ff 	lea    -0x138(%rbp),%rdi
  10600c:	be aa 00 00 00       	mov    $0xaa,%esi
  106011:	ba 00 01 00 00       	mov    $0x100,%edx
  106016:	e8 75 0f 00 00       	callq  106f90 <memset>
            mem.set(u8, bytes[0..], byte);
  10601b:	48 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%rax
  106022:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
  106029:	b0 01                	mov    $0x1,%al
  10602b:	a8 01                	test   $0x1,%al
  10602d:	75 02                	jne    106031 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x61>
  10602f:	eb 02                	jmp    106033 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x63>
  106031:	eb 0e                	jmp    106041 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x71>
  106033:	31 c0                	xor    %eax,%eax
  106035:	89 c7                	mov    %eax,%edi
  106037:	be 00 01 00 00       	mov    $0x100,%esi
  10603c:	e8 7f c9 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  106041:	8a 85 af fe ff ff    	mov    -0x151(%rbp),%al
  106047:	48 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%rdi
  10604e:	be 00 01 00 00       	mov    $0x100,%esi
  106053:	0f b6 d0             	movzbl %al,%edx
  106056:	e8 55 0c 00 00       	callq  106cb0 <mem.set__anon_1830>
  10605b:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax

            var remaining: usize = n;
  106062:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
            while (remaining > 0) {
  106066:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  10606b:	76 41                	jbe    1060ae <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0xde>
                const to_write = std.math.min(remaining, bytes.len);
  10606d:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  106071:	be 00 01 00 00       	mov    $0x100,%esi
  106076:	e8 15 0d 00 00       	callq  106d90 <math.min__anon_1831>
  10607b:	48 89 c1             	mov    %rax,%rcx
  10607e:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
  106085:	48 89 8d 80 fe ff ff 	mov    %rcx,-0x180(%rbp)
  10608c:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
                try self.writeAll(bytes[0..to_write]);
  106090:	48 8b 00             	mov    (%rax),%rax
  106093:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  106097:	48 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%rax
  10609e:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
  1060a5:	31 c0                	xor    %eax,%eax
  1060a7:	48 39 c8             	cmp    %rcx,%rax
  1060aa:	76 07                	jbe    1060b3 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0xe3>
  1060ac:	eb 07                	jmp    1060b5 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0xe5>
                remaining -= to_write;
  1060ae:	e9 fb 00 00 00       	jmpq   1061ae <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x1de>
                try self.writeAll(bytes[0..to_write]);
  1060b3:	eb 10                	jmp    1060c5 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0xf5>
  1060b5:	48 8b b5 80 fe ff ff 	mov    -0x180(%rbp),%rsi
  1060bc:	31 c0                	xor    %eax,%eax
  1060be:	89 c7                	mov    %eax,%edi
  1060c0:	e8 fb c8 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1060c5:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  1060cc:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  1060d2:	77 02                	ja     1060d6 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x106>
  1060d4:	eb 11                	jmp    1060e7 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x117>
  1060d6:	48 8b bd 80 fe ff ff 	mov    -0x180(%rbp),%rdi
  1060dd:	be 00 01 00 00       	mov    $0x100,%esi
  1060e2:	e8 09 bd ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1060e7:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
  1060ee:	31 c0                	xor    %eax,%eax
  1060f0:	48 39 c8             	cmp    %rcx,%rax
  1060f3:	77 02                	ja     1060f7 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x127>
  1060f5:	eb 10                	jmp    106107 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x137>
  1060f7:	48 8b b5 80 fe ff ff 	mov    -0x180(%rbp),%rsi
  1060fe:	31 c0                	xor    %eax,%eax
  106100:	89 c7                	mov    %eax,%edi
  106102:	e8 e9 bc ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106107:	48 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%rdi
  10610e:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
  106115:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
  10611c:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  106120:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  106124:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  106128:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  10612c:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  106130:	e8 fb ce ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  106135:	66 89 85 7e fe ff ff 	mov    %ax,-0x182(%rbp)
  10613c:	66 83 f8 00          	cmp    $0x0,%ax
  106140:	74 1c                	je     10615e <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x18e>
  106142:	48 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%rdi
  106149:	e8 92 d0 ff ff       	callq  1031e0 <builtin.returnError>
  10614e:	66 8b 85 7e fe ff ff 	mov    -0x182(%rbp),%ax
  106155:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
  10615c:	5d                   	pop    %rbp
  10615d:	c3                   	retq   
  10615e:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
                remaining -= to_write;
  106165:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106169:	48 29 c8             	sub    %rcx,%rax
  10616c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  106170:	0f 92 45 f8          	setb   -0x8(%rbp)
  106174:	8a 45 f8             	mov    -0x8(%rbp),%al
  106177:	84 c0                	test   %al,%al
  106179:	75 04                	jne    10617f <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x1af>
  10617b:	eb 00                	jmp    10617d <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x1ad>
  10617d:	eb 22                	jmp    1061a1 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x1d1>
  10617f:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  106186:	00 00 00 
  106189:	be 10 00 00 00       	mov    $0x10,%esi
  10618e:	31 c0                	xor    %eax,%eax
  106190:	89 c2                	mov    %eax,%edx
  106192:	48 b9 f0 0b 10 00 00 	movabs $0x100bf0,%rcx
  106199:	00 00 00 
  10619c:	e8 6f bd ff ff       	callq  101f10 <builtin.default_panic>
  1061a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1061a5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  1061a9:	e9 b8 fe ff ff       	jmpq   106066 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeByteNTimes+0x96>
  1061ae:	31 c0                	xor    %eax,%eax
  1061b0:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
  1061b7:	5d                   	pop    %rbp
  1061b8:	c3                   	retq   
  1061b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000001061c0 <fmt.ArgState.hasUnusedArgs>:
    fn hasUnusedArgs(self: *@This()) bool {
  1061c0:	55                   	push   %rbp
  1061c1:	48 89 e5             	mov    %rsp,%rbp
  1061c4:	50                   	push   %rax
  1061c5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        return @popCount(self.used_args) != self.args_len;
  1061c9:	8b 4f 10             	mov    0x10(%rdi),%ecx
  1061cc:	89 c8                	mov    %ecx,%eax
  1061ce:	d1 e8                	shr    %eax
  1061d0:	25 55 55 55 55       	and    $0x55555555,%eax
  1061d5:	29 c1                	sub    %eax,%ecx
  1061d7:	89 c8                	mov    %ecx,%eax
  1061d9:	25 33 33 33 33       	and    $0x33333333,%eax
  1061de:	c1 e9 02             	shr    $0x2,%ecx
  1061e1:	81 e1 33 33 33 33    	and    $0x33333333,%ecx
  1061e7:	01 c8                	add    %ecx,%eax
  1061e9:	89 c1                	mov    %eax,%ecx
  1061eb:	c1 e9 04             	shr    $0x4,%ecx
  1061ee:	01 c8                	add    %ecx,%eax
  1061f0:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
  1061f5:	69 c0 01 01 01 01    	imul   $0x1010101,%eax,%eax
  1061fb:	c1 e8 18             	shr    $0x18,%eax
  1061fe:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  106202:	48 29 c8             	sub    %rcx,%rax
  106205:	0f 95 c0             	setne  %al
  106208:	48 83 c4 08          	add    $0x8,%rsp
  10620c:	5d                   	pop    %rbp
  10620d:	c3                   	retq   
  10620e:	66 90                	xchg   %ax,%ax

0000000000106210 <fmt.format__anon_1798>:
) !void {
  106210:	55                   	push   %rbp
  106211:	48 89 e5             	mov    %rsp,%rbp
  106214:	48 83 ec 40          	sub    $0x40,%rsp
  106218:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  10621c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  106220:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
            try writer.writeAll(fmt[start_index..end_index]);
  106224:	48 8b 06             	mov    (%rsi),%rax
  106227:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  10622b:	b0 01                	mov    $0x1,%al
  10622d:	a8 01                	test   $0x1,%al
  10622f:	75 02                	jne    106233 <fmt.format__anon_1798+0x23>
  106231:	eb 02                	jmp    106235 <fmt.format__anon_1798+0x25>
  106233:	eb 0e                	jmp    106243 <fmt.format__anon_1798+0x33>
  106235:	31 c0                	xor    %eax,%eax
  106237:	89 c7                	mov    %eax,%edi
  106239:	be 0c 00 00 00       	mov    $0xc,%esi
  10623e:	e8 7d c7 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  106243:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  106247:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  10624b:	48 ba 47 06 10 00 00 	movabs $0x100647,%rdx
  106252:	00 00 00 
  106255:	b9 0c 00 00 00       	mov    $0xc,%ecx
  10625a:	e8 d1 cd ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  10625f:	66 89 45 c6          	mov    %ax,-0x3a(%rbp)
  106263:	66 83 f8 00          	cmp    $0x0,%ax
  106267:	74 13                	je     10627c <fmt.format__anon_1798+0x6c>
  106269:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  10626d:	e8 6e cf ff ff       	callq  1031e0 <builtin.returnError>
  106272:	66 8b 45 c6          	mov    -0x3a(%rbp),%ax
  106276:	48 83 c4 40          	add    $0x40,%rsp
  10627a:	5d                   	pop    %rbp
  10627b:	c3                   	retq   
  10627c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  106280:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  106284:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
        const arg_to_print = comptime arg_state.nextArg(arg_pos) orelse
  106288:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  10628f:	00 
        try formatType(
  106290:	48 8b 30             	mov    (%rax),%rsi
            std.options.fmt_max_depth,
  106293:	48 ba 38 04 10 00 00 	movabs $0x100438,%rdx
  10629a:	00 00 00 
  10629d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  1062a3:	e8 18 d0 ff ff       	callq  1032c0 <fmt.formatType__anon_1629>
  1062a8:	66 89 45 c4          	mov    %ax,-0x3c(%rbp)
  1062ac:	66 83 f8 00          	cmp    $0x0,%ax
  1062b0:	74 13                	je     1062c5 <fmt.format__anon_1798+0xb5>
  1062b2:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
        try formatType(
  1062b6:	e8 25 cf ff ff       	callq  1031e0 <builtin.returnError>
  1062bb:	66 8b 45 c4          	mov    -0x3c(%rbp),%ax
  1062bf:	48 83 c4 40          	add    $0x40,%rsp
  1062c3:	5d                   	pop    %rbp
  1062c4:	c3                   	retq   
  1062c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
            try writer.writeAll(fmt[start_index..end_index]);
  1062c9:	48 8b 00             	mov    (%rax),%rax
  1062cc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  1062d0:	b0 01                	mov    $0x1,%al
  1062d2:	a8 01                	test   $0x1,%al
  1062d4:	75 02                	jne    1062d8 <fmt.format__anon_1798+0xc8>
  1062d6:	eb 02                	jmp    1062da <fmt.format__anon_1798+0xca>
  1062d8:	eb 0f                	jmp    1062e9 <fmt.format__anon_1798+0xd9>
  1062da:	bf 0f 00 00 00       	mov    $0xf,%edi
  1062df:	be 29 00 00 00       	mov    $0x29,%esi
  1062e4:	e8 d7 c6 ff ff       	callq  1029c0 <builtin.panicStartGreaterThanEnd>
  1062e9:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  1062ed:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  1062f1:	48 ba 47 06 10 00 00 	movabs $0x100647,%rdx
  1062f8:	00 00 00 
  1062fb:	48 83 c2 0f          	add    $0xf,%rdx
  1062ff:	b9 1a 00 00 00       	mov    $0x1a,%ecx
  106304:	e8 27 cd ff ff       	callq  103030 <io.writer.Writer(*io.fixed_buffer_stream.FixedBufferStream([]u8),error{NoSpaceLeft},(function 'write')).writeAll>
  106309:	66 89 45 c2          	mov    %ax,-0x3e(%rbp)
  10630d:	66 83 f8 00          	cmp    $0x0,%ax
  106311:	74 13                	je     106326 <fmt.format__anon_1798+0x116>
  106313:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  106317:	e8 c4 ce ff ff       	callq  1031e0 <builtin.returnError>
  10631c:	66 8b 45 c2          	mov    -0x3e(%rbp),%ax
  106320:	48 83 c4 40          	add    $0x40,%rsp
  106324:	5d                   	pop    %rbp
  106325:	c3                   	retq   
  106326:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  10632a:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  10632e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
        const arg_to_print = comptime arg_state.nextArg(arg_pos) orelse
  106332:	48 c7 45 f8 01 00 00 	movq   $0x1,-0x8(%rbp)
  106339:	00 
        try formatType(
  10633a:	48 8b 70 08          	mov    0x8(%rax),%rsi
            std.options.fmt_max_depth,
  10633e:	48 ba c8 04 10 00 00 	movabs $0x1004c8,%rdx
  106345:	00 00 00 
  106348:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  10634e:	e8 6d cf ff ff       	callq  1032c0 <fmt.formatType__anon_1629>
  106353:	66 89 45 c0          	mov    %ax,-0x40(%rbp)
  106357:	66 83 f8 00          	cmp    $0x0,%ax
  10635b:	74 13                	je     106370 <fmt.format__anon_1798+0x160>
  10635d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
        try formatType(
  106361:	e8 7a ce ff ff       	callq  1031e0 <builtin.returnError>
  106366:	66 8b 45 c0          	mov    -0x40(%rbp),%ax
  10636a:	48 83 c4 40          	add    $0x40,%rsp
  10636e:	5d                   	pop    %rbp
  10636f:	c3                   	retq   
    if (comptime arg_state.hasUnusedArgs()) {
  106370:	31 c0                	xor    %eax,%eax
  106372:	48 83 c4 40          	add    $0x40,%rsp
  106376:	5d                   	pop    %rbp
  106377:	c3                   	retq   
  106378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10637f:	00 

0000000000106380 <unicode.utf8Decode2>:
pub fn utf8Decode2(bytes: []const u8) Utf8Decode2Error!u21 {
  106380:	55                   	push   %rbp
  106381:	48 89 e5             	mov    %rsp,%rbp
  106384:	48 83 ec 50          	sub    $0x50,%rsp
  106388:	48 89 c8             	mov    %rcx,%rax
  10638b:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  10638f:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  106393:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  106397:	48 89 c1             	mov    %rax,%rcx
  10639a:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  10639e:	48 89 d6             	mov    %rdx,%rsi
  1063a1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  1063a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1063a9:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    assert(bytes.len == 2);
  1063ad:	48 83 f9 02          	cmp    $0x2,%rcx
  1063b1:	0f 94 c0             	sete   %al
  1063b4:	0f b6 f8             	movzbl %al,%edi
  1063b7:	e8 44 d0 ff ff       	callq  103400 <debug.assert>
  1063bc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    assert(bytes[0] & 0b11100000 == 0b11000000);
  1063c0:	31 c0                	xor    %eax,%eax
  1063c2:	48 39 c8             	cmp    %rcx,%rax
  1063c5:	73 02                	jae    1063c9 <unicode.utf8Decode2+0x49>
  1063c7:	eb 0d                	jmp    1063d6 <unicode.utf8Decode2+0x56>
  1063c9:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1063cd:	31 c0                	xor    %eax,%eax
  1063cf:	89 c7                	mov    %eax,%edi
  1063d1:	e8 1a ba ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1063d6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1063da:	8a 00                	mov    (%rax),%al
  1063dc:	24 e0                	and    $0xe0,%al
  1063de:	3c c0                	cmp    $0xc0,%al
  1063e0:	0f 94 c0             	sete   %al
  1063e3:	0f b6 f8             	movzbl %al,%edi
  1063e6:	e8 15 d0 ff ff       	callq  103400 <debug.assert>
  1063eb:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    var value: u21 = bytes[0] & 0b00011111;
  1063ef:	31 c0                	xor    %eax,%eax
  1063f1:	48 39 c8             	cmp    %rcx,%rax
  1063f4:	73 02                	jae    1063f8 <unicode.utf8Decode2+0x78>
  1063f6:	eb 0d                	jmp    106405 <unicode.utf8Decode2+0x85>
  1063f8:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1063fc:	31 c0                	xor    %eax,%eax
  1063fe:	89 c7                	mov    %eax,%edi
  106400:	e8 eb b9 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106405:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106409:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  10640d:	0f b6 00             	movzbl (%rax),%eax
  106410:	83 e0 1f             	and    $0x1f,%eax
  106413:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
  106417:	c6 45 f6 00          	movb   $0x0,-0xa(%rbp)
    if (bytes[1] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  10641b:	b8 01 00 00 00       	mov    $0x1,%eax
  106420:	48 39 c8             	cmp    %rcx,%rax
  106423:	73 02                	jae    106427 <unicode.utf8Decode2+0xa7>
  106425:	eb 0e                	jmp    106435 <unicode.utf8Decode2+0xb5>
  106427:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  10642b:	bf 01 00 00 00       	mov    $0x1,%edi
  106430:	e8 bb b9 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106435:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106439:	8a 40 01             	mov    0x1(%rax),%al
  10643c:	24 c0                	and    $0xc0,%al
  10643e:	3c 80                	cmp    $0x80,%al
  106440:	74 22                	je     106464 <unicode.utf8Decode2+0xe4>
  106442:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106446:	e8 95 cd ff ff       	callq  1031e0 <builtin.returnError>
  10644b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  10644f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106453:	48 8b 14 25 20 05 10 	mov    0x100520,%rdx
  10645a:	00 
  10645b:	48 89 11             	mov    %rdx,(%rcx)
  10645e:	48 83 c4 50          	add    $0x50,%rsp
  106462:	5d                   	pop    %rbp
  106463:	c3                   	retq   
  106464:	eb 00                	jmp    106466 <unicode.utf8Decode2+0xe6>
    value <<= 6;
  106466:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  10646a:	c1 e1 10             	shl    $0x10,%ecx
  10646d:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106471:	09 c8                	or     %ecx,%eax
  106473:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  106476:	b0 01                	mov    $0x1,%al
  106478:	a8 01                	test   $0x1,%al
  10647a:	75 02                	jne    10647e <unicode.utf8Decode2+0xfe>
  10647c:	eb 02                	jmp    106480 <unicode.utf8Decode2+0x100>
  10647e:	eb 22                	jmp    1064a2 <unicode.utf8Decode2+0x122>
  106480:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  106487:	00 00 00 
  10648a:	be 2a 00 00 00       	mov    $0x2a,%esi
  10648f:	31 c0                	xor    %eax,%eax
  106491:	89 c2                	mov    %eax,%edx
  106493:	48 b9 00 0c 10 00 00 	movabs $0x100c00,%rcx
  10649a:	00 00 00 
  10649d:	e8 6e ba ff ff       	callq  101f10 <builtin.default_panic>
  1064a2:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1064a6:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  1064a9:	89 c2                	mov    %eax,%edx
  1064ab:	c1 e2 06             	shl    $0x6,%edx
  1064ae:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  1064b2:	c1 e8 0a             	shr    $0xa,%eax
  1064b5:	83 e0 1f             	and    $0x1f,%eax
  1064b8:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[1] & 0b00111111;
  1064bb:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  1064bf:	c1 e2 10             	shl    $0x10,%edx
  1064c2:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1064c6:	09 d0                	or     %edx,%eax
  1064c8:	89 45 b0             	mov    %eax,-0x50(%rbp)
  1064cb:	b8 01 00 00 00       	mov    $0x1,%eax
  1064d0:	48 39 c8             	cmp    %rcx,%rax
  1064d3:	73 02                	jae    1064d7 <unicode.utf8Decode2+0x157>
  1064d5:	eb 0e                	jmp    1064e5 <unicode.utf8Decode2+0x165>
  1064d7:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1064db:	bf 01 00 00 00       	mov    $0x1,%edi
  1064e0:	e8 0b b9 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1064e5:	8b 4d b0             	mov    -0x50(%rbp),%ecx
  1064e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1064ec:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  1064f0:	83 e2 3f             	and    $0x3f,%edx
  1064f3:	89 c8                	mov    %ecx,%eax
  1064f5:	09 d0                	or     %edx,%eax
  1064f7:	c1 e9 10             	shr    $0x10,%ecx
  1064fa:	83 e1 1f             	and    $0x1f,%ecx
  1064fd:	88 4d f6             	mov    %cl,-0xa(%rbp)
  106500:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (value < 0x80) return error.Utf8OverlongEncoding;
  106504:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106508:	c1 e1 10             	shl    $0x10,%ecx
  10650b:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  10650f:	09 c8                	or     %ecx,%eax
  106511:	83 e8 7f             	sub    $0x7f,%eax
  106514:	77 24                	ja     10653a <unicode.utf8Decode2+0x1ba>
  106516:	eb 00                	jmp    106518 <unicode.utf8Decode2+0x198>
  106518:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  10651c:	e8 bf cc ff ff       	callq  1031e0 <builtin.returnError>
  106521:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106525:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106529:	48 8b 14 25 28 05 10 	mov    0x100528,%rdx
  106530:	00 
  106531:	48 89 11             	mov    %rdx,(%rcx)
  106534:	48 83 c4 50          	add    $0x50,%rsp
  106538:	5d                   	pop    %rbp
  106539:	c3                   	retq   
  10653a:	eb 00                	jmp    10653c <unicode.utf8Decode2+0x1bc>
  10653c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106540:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    return value;
  106544:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  106548:	0f b7 75 f4          	movzwl -0xc(%rbp),%esi
  10654c:	66 c7 45 fc 00 00    	movw   $0x0,-0x4(%rbp)
  106552:	66 89 75 f8          	mov    %si,-0x8(%rbp)
  106556:	83 e2 1f             	and    $0x1f,%edx
  106559:	88 55 fa             	mov    %dl,-0x6(%rbp)
  10655c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  106560:	48 89 11             	mov    %rdx,(%rcx)
  106563:	48 83 c4 50          	add    $0x50,%rsp
  106567:	5d                   	pop    %rbp
  106568:	c3                   	retq   
  106569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000106570 <unicode.utf8Decode3>:
pub fn utf8Decode3(bytes: []const u8) Utf8Decode3Error!u21 {
  106570:	55                   	push   %rbp
  106571:	48 89 e5             	mov    %rsp,%rbp
  106574:	48 83 ec 60          	sub    $0x60,%rsp
  106578:	48 89 c8             	mov    %rcx,%rax
  10657b:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  10657f:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  106583:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  106587:	48 89 c1             	mov    %rax,%rcx
  10658a:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  10658e:	48 89 d6             	mov    %rdx,%rsi
  106591:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  106595:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  106599:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    assert(bytes.len == 3);
  10659d:	48 83 f9 03          	cmp    $0x3,%rcx
  1065a1:	0f 94 c0             	sete   %al
  1065a4:	0f b6 f8             	movzbl %al,%edi
  1065a7:	e8 54 ce ff ff       	callq  103400 <debug.assert>
  1065ac:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    assert(bytes[0] & 0b11110000 == 0b11100000);
  1065b0:	31 c0                	xor    %eax,%eax
  1065b2:	48 39 c8             	cmp    %rcx,%rax
  1065b5:	73 02                	jae    1065b9 <unicode.utf8Decode3+0x49>
  1065b7:	eb 0d                	jmp    1065c6 <unicode.utf8Decode3+0x56>
  1065b9:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1065bd:	31 c0                	xor    %eax,%eax
  1065bf:	89 c7                	mov    %eax,%edi
  1065c1:	e8 2a b8 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1065c6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1065ca:	8a 00                	mov    (%rax),%al
  1065cc:	24 f0                	and    $0xf0,%al
  1065ce:	3c e0                	cmp    $0xe0,%al
  1065d0:	0f 94 c0             	sete   %al
  1065d3:	0f b6 f8             	movzbl %al,%edi
  1065d6:	e8 25 ce ff ff       	callq  103400 <debug.assert>
  1065db:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    var value: u21 = bytes[0] & 0b00001111;
  1065df:	31 c0                	xor    %eax,%eax
  1065e1:	48 39 c8             	cmp    %rcx,%rax
  1065e4:	73 02                	jae    1065e8 <unicode.utf8Decode3+0x78>
  1065e6:	eb 0d                	jmp    1065f5 <unicode.utf8Decode3+0x85>
  1065e8:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1065ec:	31 c0                	xor    %eax,%eax
  1065ee:	89 c7                	mov    %eax,%edi
  1065f0:	e8 fb b7 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1065f5:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1065f9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1065fd:	0f b6 00             	movzbl (%rax),%eax
  106600:	83 e0 0f             	and    $0xf,%eax
  106603:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
  106607:	c6 45 f6 00          	movb   $0x0,-0xa(%rbp)
    if (bytes[1] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  10660b:	b8 01 00 00 00       	mov    $0x1,%eax
  106610:	48 39 c8             	cmp    %rcx,%rax
  106613:	73 02                	jae    106617 <unicode.utf8Decode3+0xa7>
  106615:	eb 0e                	jmp    106625 <unicode.utf8Decode3+0xb5>
  106617:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  10661b:	bf 01 00 00 00       	mov    $0x1,%edi
  106620:	e8 cb b7 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106625:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106629:	8a 40 01             	mov    0x1(%rax),%al
  10662c:	24 c0                	and    $0xc0,%al
  10662e:	3c 80                	cmp    $0x80,%al
  106630:	74 22                	je     106654 <unicode.utf8Decode3+0xe4>
  106632:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106636:	e8 a5 cb ff ff       	callq  1031e0 <builtin.returnError>
  10663b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  10663f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106643:	48 8b 14 25 30 05 10 	mov    0x100530,%rdx
  10664a:	00 
  10664b:	48 89 11             	mov    %rdx,(%rcx)
  10664e:	48 83 c4 60          	add    $0x60,%rsp
  106652:	5d                   	pop    %rbp
  106653:	c3                   	retq   
  106654:	eb 00                	jmp    106656 <unicode.utf8Decode3+0xe6>
    value <<= 6;
  106656:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  10665a:	c1 e1 10             	shl    $0x10,%ecx
  10665d:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106661:	09 c8                	or     %ecx,%eax
  106663:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  106666:	b0 01                	mov    $0x1,%al
  106668:	a8 01                	test   $0x1,%al
  10666a:	75 02                	jne    10666e <unicode.utf8Decode3+0xfe>
  10666c:	eb 02                	jmp    106670 <unicode.utf8Decode3+0x100>
  10666e:	eb 22                	jmp    106692 <unicode.utf8Decode3+0x122>
  106670:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  106677:	00 00 00 
  10667a:	be 2a 00 00 00       	mov    $0x2a,%esi
  10667f:	31 c0                	xor    %eax,%eax
  106681:	89 c2                	mov    %eax,%edx
  106683:	48 b9 10 0c 10 00 00 	movabs $0x100c10,%rcx
  10668a:	00 00 00 
  10668d:	e8 7e b8 ff ff       	callq  101f10 <builtin.default_panic>
  106692:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106696:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  106699:	89 c2                	mov    %eax,%edx
  10669b:	c1 e2 06             	shl    $0x6,%edx
  10669e:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  1066a2:	c1 e8 0a             	shr    $0xa,%eax
  1066a5:	83 e0 1f             	and    $0x1f,%eax
  1066a8:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[1] & 0b00111111;
  1066ab:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  1066af:	c1 e2 10             	shl    $0x10,%edx
  1066b2:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1066b6:	09 d0                	or     %edx,%eax
  1066b8:	89 45 b0             	mov    %eax,-0x50(%rbp)
  1066bb:	b8 01 00 00 00       	mov    $0x1,%eax
  1066c0:	48 39 c8             	cmp    %rcx,%rax
  1066c3:	73 02                	jae    1066c7 <unicode.utf8Decode3+0x157>
  1066c5:	eb 0e                	jmp    1066d5 <unicode.utf8Decode3+0x165>
  1066c7:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1066cb:	bf 01 00 00 00       	mov    $0x1,%edi
  1066d0:	e8 1b b7 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1066d5:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1066d9:	8b 55 b0             	mov    -0x50(%rbp),%edx
  1066dc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1066e0:	0f b6 70 01          	movzbl 0x1(%rax),%esi
  1066e4:	83 e6 3f             	and    $0x3f,%esi
  1066e7:	89 d0                	mov    %edx,%eax
  1066e9:	09 f0                	or     %esi,%eax
  1066eb:	c1 ea 10             	shr    $0x10,%edx
  1066ee:	83 e2 1f             	and    $0x1f,%edx
  1066f1:	88 55 f6             	mov    %dl,-0xa(%rbp)
  1066f4:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (bytes[2] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  1066f8:	b8 02 00 00 00       	mov    $0x2,%eax
  1066fd:	48 39 c8             	cmp    %rcx,%rax
  106700:	73 02                	jae    106704 <unicode.utf8Decode3+0x194>
  106702:	eb 0e                	jmp    106712 <unicode.utf8Decode3+0x1a2>
  106704:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106708:	bf 02 00 00 00       	mov    $0x2,%edi
  10670d:	e8 de b6 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106712:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106716:	8a 40 02             	mov    0x2(%rax),%al
  106719:	24 c0                	and    $0xc0,%al
  10671b:	3c 80                	cmp    $0x80,%al
  10671d:	74 22                	je     106741 <unicode.utf8Decode3+0x1d1>
  10671f:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106723:	e8 b8 ca ff ff       	callq  1031e0 <builtin.returnError>
  106728:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  10672c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106730:	48 8b 14 25 38 05 10 	mov    0x100538,%rdx
  106737:	00 
  106738:	48 89 11             	mov    %rdx,(%rcx)
  10673b:	48 83 c4 60          	add    $0x60,%rsp
  10673f:	5d                   	pop    %rbp
  106740:	c3                   	retq   
  106741:	eb 00                	jmp    106743 <unicode.utf8Decode3+0x1d3>
    value <<= 6;
  106743:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106747:	c1 e1 10             	shl    $0x10,%ecx
  10674a:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  10674e:	09 c8                	or     %ecx,%eax
  106750:	89 45 ac             	mov    %eax,-0x54(%rbp)
  106753:	b0 01                	mov    $0x1,%al
  106755:	a8 01                	test   $0x1,%al
  106757:	75 02                	jne    10675b <unicode.utf8Decode3+0x1eb>
  106759:	eb 02                	jmp    10675d <unicode.utf8Decode3+0x1ed>
  10675b:	eb 22                	jmp    10677f <unicode.utf8Decode3+0x20f>
  10675d:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  106764:	00 00 00 
  106767:	be 2a 00 00 00       	mov    $0x2a,%esi
  10676c:	31 c0                	xor    %eax,%eax
  10676e:	89 c2                	mov    %eax,%edx
  106770:	48 b9 20 0c 10 00 00 	movabs $0x100c20,%rcx
  106777:	00 00 00 
  10677a:	e8 91 b7 ff ff       	callq  101f10 <builtin.default_panic>
  10677f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106783:	8b 45 ac             	mov    -0x54(%rbp),%eax
  106786:	89 c2                	mov    %eax,%edx
  106788:	c1 e2 06             	shl    $0x6,%edx
  10678b:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  10678f:	c1 e8 0a             	shr    $0xa,%eax
  106792:	83 e0 1f             	and    $0x1f,%eax
  106795:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[2] & 0b00111111;
  106798:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  10679c:	c1 e2 10             	shl    $0x10,%edx
  10679f:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1067a3:	09 d0                	or     %edx,%eax
  1067a5:	89 45 a8             	mov    %eax,-0x58(%rbp)
  1067a8:	b8 02 00 00 00       	mov    $0x2,%eax
  1067ad:	48 39 c8             	cmp    %rcx,%rax
  1067b0:	73 02                	jae    1067b4 <unicode.utf8Decode3+0x244>
  1067b2:	eb 0e                	jmp    1067c2 <unicode.utf8Decode3+0x252>
  1067b4:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1067b8:	bf 02 00 00 00       	mov    $0x2,%edi
  1067bd:	e8 2e b6 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  1067c2:	8b 4d a8             	mov    -0x58(%rbp),%ecx
  1067c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1067c9:	0f b6 50 02          	movzbl 0x2(%rax),%edx
  1067cd:	83 e2 3f             	and    $0x3f,%edx
  1067d0:	89 c8                	mov    %ecx,%eax
  1067d2:	09 d0                	or     %edx,%eax
  1067d4:	c1 e9 10             	shr    $0x10,%ecx
  1067d7:	83 e1 1f             	and    $0x1f,%ecx
  1067da:	88 4d f6             	mov    %cl,-0xa(%rbp)
  1067dd:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (value < 0x800) return error.Utf8OverlongEncoding;
  1067e1:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  1067e5:	c1 e1 10             	shl    $0x10,%ecx
  1067e8:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1067ec:	09 c8                	or     %ecx,%eax
  1067ee:	2d ff 07 00 00       	sub    $0x7ff,%eax
  1067f3:	77 24                	ja     106819 <unicode.utf8Decode3+0x2a9>
  1067f5:	eb 00                	jmp    1067f7 <unicode.utf8Decode3+0x287>
  1067f7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  1067fb:	e8 e0 c9 ff ff       	callq  1031e0 <builtin.returnError>
  106800:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106804:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106808:	48 8b 14 25 40 05 10 	mov    0x100540,%rdx
  10680f:	00 
  106810:	48 89 11             	mov    %rdx,(%rcx)
  106813:	48 83 c4 60          	add    $0x60,%rsp
  106817:	5d                   	pop    %rbp
  106818:	c3                   	retq   
  106819:	eb 00                	jmp    10681b <unicode.utf8Decode3+0x2ab>
    if (0xd800 <= value and value <= 0xdfff) return error.Utf8EncodesSurrogateHalf;
  10681b:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  10681f:	c1 e1 10             	shl    $0x10,%ecx
  106822:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106826:	09 c8                	or     %ecx,%eax
  106828:	2d 00 d8 00 00       	sub    $0xd800,%eax
  10682d:	72 1c                	jb     10684b <unicode.utf8Decode3+0x2db>
  10682f:	eb 00                	jmp    106831 <unicode.utf8Decode3+0x2c1>
  106831:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106835:	c1 e1 10             	shl    $0x10,%ecx
  106838:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  10683c:	09 c8                	or     %ecx,%eax
  10683e:	2d 00 e0 00 00       	sub    $0xe000,%eax
  106843:	0f 92 c0             	setb   %al
  106846:	88 45 a7             	mov    %al,-0x59(%rbp)
  106849:	eb 07                	jmp    106852 <unicode.utf8Decode3+0x2e2>
  10684b:	31 c0                	xor    %eax,%eax
  10684d:	88 45 a7             	mov    %al,-0x59(%rbp)
  106850:	eb 00                	jmp    106852 <unicode.utf8Decode3+0x2e2>
  106852:	8a 45 a7             	mov    -0x59(%rbp),%al
  106855:	a8 01                	test   $0x1,%al
  106857:	75 02                	jne    10685b <unicode.utf8Decode3+0x2eb>
  106859:	eb 22                	jmp    10687d <unicode.utf8Decode3+0x30d>
  10685b:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  10685f:	e8 7c c9 ff ff       	callq  1031e0 <builtin.returnError>
  106864:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106868:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  10686c:	48 8b 14 25 48 05 10 	mov    0x100548,%rdx
  106873:	00 
  106874:	48 89 11             	mov    %rdx,(%rcx)
  106877:	48 83 c4 60          	add    $0x60,%rsp
  10687b:	5d                   	pop    %rbp
  10687c:	c3                   	retq   
  10687d:	eb 00                	jmp    10687f <unicode.utf8Decode3+0x30f>
  10687f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106883:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    return value;
  106887:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  10688b:	0f b7 75 f4          	movzwl -0xc(%rbp),%esi
  10688f:	66 c7 45 fc 00 00    	movw   $0x0,-0x4(%rbp)
  106895:	66 89 75 f8          	mov    %si,-0x8(%rbp)
  106899:	83 e2 1f             	and    $0x1f,%edx
  10689c:	88 55 fa             	mov    %dl,-0x6(%rbp)
  10689f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  1068a3:	48 89 11             	mov    %rdx,(%rcx)
  1068a6:	48 83 c4 60          	add    $0x60,%rsp
  1068aa:	5d                   	pop    %rbp
  1068ab:	c3                   	retq   
  1068ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001068b0 <unicode.utf8Decode4>:
pub fn utf8Decode4(bytes: []const u8) Utf8Decode4Error!u21 {
  1068b0:	55                   	push   %rbp
  1068b1:	48 89 e5             	mov    %rsp,%rbp
  1068b4:	48 83 ec 60          	sub    $0x60,%rsp
  1068b8:	48 89 c8             	mov    %rcx,%rax
  1068bb:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  1068bf:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  1068c3:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1068c7:	48 89 c1             	mov    %rax,%rcx
  1068ca:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  1068ce:	48 89 d6             	mov    %rdx,%rsi
  1068d1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  1068d5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1068d9:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    assert(bytes.len == 4);
  1068dd:	48 83 f9 04          	cmp    $0x4,%rcx
  1068e1:	0f 94 c0             	sete   %al
  1068e4:	0f b6 f8             	movzbl %al,%edi
  1068e7:	e8 14 cb ff ff       	callq  103400 <debug.assert>
  1068ec:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    assert(bytes[0] & 0b11111000 == 0b11110000);
  1068f0:	31 c0                	xor    %eax,%eax
  1068f2:	48 39 c8             	cmp    %rcx,%rax
  1068f5:	73 02                	jae    1068f9 <unicode.utf8Decode4+0x49>
  1068f7:	eb 0d                	jmp    106906 <unicode.utf8Decode4+0x56>
  1068f9:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  1068fd:	31 c0                	xor    %eax,%eax
  1068ff:	89 c7                	mov    %eax,%edi
  106901:	e8 ea b4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106906:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  10690a:	8a 00                	mov    (%rax),%al
  10690c:	24 f8                	and    $0xf8,%al
  10690e:	3c f0                	cmp    $0xf0,%al
  106910:	0f 94 c0             	sete   %al
  106913:	0f b6 f8             	movzbl %al,%edi
  106916:	e8 e5 ca ff ff       	callq  103400 <debug.assert>
  10691b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    var value: u21 = bytes[0] & 0b00000111;
  10691f:	31 c0                	xor    %eax,%eax
  106921:	48 39 c8             	cmp    %rcx,%rax
  106924:	73 02                	jae    106928 <unicode.utf8Decode4+0x78>
  106926:	eb 0d                	jmp    106935 <unicode.utf8Decode4+0x85>
  106928:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  10692c:	31 c0                	xor    %eax,%eax
  10692e:	89 c7                	mov    %eax,%edi
  106930:	e8 bb b4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106935:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106939:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  10693d:	0f b6 00             	movzbl (%rax),%eax
  106940:	83 e0 07             	and    $0x7,%eax
  106943:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
  106947:	c6 45 f6 00          	movb   $0x0,-0xa(%rbp)
    if (bytes[1] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  10694b:	b8 01 00 00 00       	mov    $0x1,%eax
  106950:	48 39 c8             	cmp    %rcx,%rax
  106953:	73 02                	jae    106957 <unicode.utf8Decode4+0xa7>
  106955:	eb 0e                	jmp    106965 <unicode.utf8Decode4+0xb5>
  106957:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  10695b:	bf 01 00 00 00       	mov    $0x1,%edi
  106960:	e8 8b b4 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106965:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106969:	8a 40 01             	mov    0x1(%rax),%al
  10696c:	24 c0                	and    $0xc0,%al
  10696e:	3c 80                	cmp    $0x80,%al
  106970:	74 22                	je     106994 <unicode.utf8Decode4+0xe4>
  106972:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106976:	e8 65 c8 ff ff       	callq  1031e0 <builtin.returnError>
  10697b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  10697f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106983:	48 8b 14 25 50 05 10 	mov    0x100550,%rdx
  10698a:	00 
  10698b:	48 89 11             	mov    %rdx,(%rcx)
  10698e:	48 83 c4 60          	add    $0x60,%rsp
  106992:	5d                   	pop    %rbp
  106993:	c3                   	retq   
  106994:	eb 00                	jmp    106996 <unicode.utf8Decode4+0xe6>
    value <<= 6;
  106996:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  10699a:	c1 e1 10             	shl    $0x10,%ecx
  10699d:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1069a1:	09 c8                	or     %ecx,%eax
  1069a3:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  1069a6:	b0 01                	mov    $0x1,%al
  1069a8:	a8 01                	test   $0x1,%al
  1069aa:	75 02                	jne    1069ae <unicode.utf8Decode4+0xfe>
  1069ac:	eb 02                	jmp    1069b0 <unicode.utf8Decode4+0x100>
  1069ae:	eb 22                	jmp    1069d2 <unicode.utf8Decode4+0x122>
  1069b0:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  1069b7:	00 00 00 
  1069ba:	be 2a 00 00 00       	mov    $0x2a,%esi
  1069bf:	31 c0                	xor    %eax,%eax
  1069c1:	89 c2                	mov    %eax,%edx
  1069c3:	48 b9 30 0c 10 00 00 	movabs $0x100c30,%rcx
  1069ca:	00 00 00 
  1069cd:	e8 3e b5 ff ff       	callq  101f10 <builtin.default_panic>
  1069d2:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  1069d6:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  1069d9:	89 c2                	mov    %eax,%edx
  1069db:	c1 e2 06             	shl    $0x6,%edx
  1069de:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  1069e2:	c1 e8 0a             	shr    $0xa,%eax
  1069e5:	83 e0 1f             	and    $0x1f,%eax
  1069e8:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[1] & 0b00111111;
  1069eb:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  1069ef:	c1 e2 10             	shl    $0x10,%edx
  1069f2:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  1069f6:	09 d0                	or     %edx,%eax
  1069f8:	89 45 b0             	mov    %eax,-0x50(%rbp)
  1069fb:	b8 01 00 00 00       	mov    $0x1,%eax
  106a00:	48 39 c8             	cmp    %rcx,%rax
  106a03:	73 02                	jae    106a07 <unicode.utf8Decode4+0x157>
  106a05:	eb 0e                	jmp    106a15 <unicode.utf8Decode4+0x165>
  106a07:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106a0b:	bf 01 00 00 00       	mov    $0x1,%edi
  106a10:	e8 db b3 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106a15:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106a19:	8b 55 b0             	mov    -0x50(%rbp),%edx
  106a1c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106a20:	0f b6 70 01          	movzbl 0x1(%rax),%esi
  106a24:	83 e6 3f             	and    $0x3f,%esi
  106a27:	89 d0                	mov    %edx,%eax
  106a29:	09 f0                	or     %esi,%eax
  106a2b:	c1 ea 10             	shr    $0x10,%edx
  106a2e:	83 e2 1f             	and    $0x1f,%edx
  106a31:	88 55 f6             	mov    %dl,-0xa(%rbp)
  106a34:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (bytes[2] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  106a38:	b8 02 00 00 00       	mov    $0x2,%eax
  106a3d:	48 39 c8             	cmp    %rcx,%rax
  106a40:	73 02                	jae    106a44 <unicode.utf8Decode4+0x194>
  106a42:	eb 0e                	jmp    106a52 <unicode.utf8Decode4+0x1a2>
  106a44:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106a48:	bf 02 00 00 00       	mov    $0x2,%edi
  106a4d:	e8 9e b3 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106a52:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106a56:	8a 40 02             	mov    0x2(%rax),%al
  106a59:	24 c0                	and    $0xc0,%al
  106a5b:	3c 80                	cmp    $0x80,%al
  106a5d:	74 22                	je     106a81 <unicode.utf8Decode4+0x1d1>
  106a5f:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106a63:	e8 78 c7 ff ff       	callq  1031e0 <builtin.returnError>
  106a68:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106a6c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106a70:	48 8b 14 25 58 05 10 	mov    0x100558,%rdx
  106a77:	00 
  106a78:	48 89 11             	mov    %rdx,(%rcx)
  106a7b:	48 83 c4 60          	add    $0x60,%rsp
  106a7f:	5d                   	pop    %rbp
  106a80:	c3                   	retq   
  106a81:	eb 00                	jmp    106a83 <unicode.utf8Decode4+0x1d3>
    value <<= 6;
  106a83:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106a87:	c1 e1 10             	shl    $0x10,%ecx
  106a8a:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106a8e:	09 c8                	or     %ecx,%eax
  106a90:	89 45 ac             	mov    %eax,-0x54(%rbp)
  106a93:	b0 01                	mov    $0x1,%al
  106a95:	a8 01                	test   $0x1,%al
  106a97:	75 02                	jne    106a9b <unicode.utf8Decode4+0x1eb>
  106a99:	eb 02                	jmp    106a9d <unicode.utf8Decode4+0x1ed>
  106a9b:	eb 22                	jmp    106abf <unicode.utf8Decode4+0x20f>
  106a9d:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  106aa4:	00 00 00 
  106aa7:	be 2a 00 00 00       	mov    $0x2a,%esi
  106aac:	31 c0                	xor    %eax,%eax
  106aae:	89 c2                	mov    %eax,%edx
  106ab0:	48 b9 40 0c 10 00 00 	movabs $0x100c40,%rcx
  106ab7:	00 00 00 
  106aba:	e8 51 b4 ff ff       	callq  101f10 <builtin.default_panic>
  106abf:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106ac3:	8b 45 ac             	mov    -0x54(%rbp),%eax
  106ac6:	89 c2                	mov    %eax,%edx
  106ac8:	c1 e2 06             	shl    $0x6,%edx
  106acb:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  106acf:	c1 e8 0a             	shr    $0xa,%eax
  106ad2:	83 e0 1f             	and    $0x1f,%eax
  106ad5:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[2] & 0b00111111;
  106ad8:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  106adc:	c1 e2 10             	shl    $0x10,%edx
  106adf:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106ae3:	09 d0                	or     %edx,%eax
  106ae5:	89 45 a8             	mov    %eax,-0x58(%rbp)
  106ae8:	b8 02 00 00 00       	mov    $0x2,%eax
  106aed:	48 39 c8             	cmp    %rcx,%rax
  106af0:	73 02                	jae    106af4 <unicode.utf8Decode4+0x244>
  106af2:	eb 0e                	jmp    106b02 <unicode.utf8Decode4+0x252>
  106af4:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106af8:	bf 02 00 00 00       	mov    $0x2,%edi
  106afd:	e8 ee b2 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106b02:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106b06:	8b 55 a8             	mov    -0x58(%rbp),%edx
  106b09:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106b0d:	0f b6 70 02          	movzbl 0x2(%rax),%esi
  106b11:	83 e6 3f             	and    $0x3f,%esi
  106b14:	89 d0                	mov    %edx,%eax
  106b16:	09 f0                	or     %esi,%eax
  106b18:	c1 ea 10             	shr    $0x10,%edx
  106b1b:	83 e2 1f             	and    $0x1f,%edx
  106b1e:	88 55 f6             	mov    %dl,-0xa(%rbp)
  106b21:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (bytes[3] & 0b11000000 != 0b10000000) return error.Utf8ExpectedContinuation;
  106b25:	b8 03 00 00 00       	mov    $0x3,%eax
  106b2a:	48 39 c8             	cmp    %rcx,%rax
  106b2d:	73 02                	jae    106b31 <unicode.utf8Decode4+0x281>
  106b2f:	eb 0e                	jmp    106b3f <unicode.utf8Decode4+0x28f>
  106b31:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106b35:	bf 03 00 00 00       	mov    $0x3,%edi
  106b3a:	e8 b1 b2 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106b3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106b43:	8a 40 03             	mov    0x3(%rax),%al
  106b46:	24 c0                	and    $0xc0,%al
  106b48:	3c 80                	cmp    $0x80,%al
  106b4a:	74 22                	je     106b6e <unicode.utf8Decode4+0x2be>
  106b4c:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106b50:	e8 8b c6 ff ff       	callq  1031e0 <builtin.returnError>
  106b55:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106b59:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106b5d:	48 8b 14 25 60 05 10 	mov    0x100560,%rdx
  106b64:	00 
  106b65:	48 89 11             	mov    %rdx,(%rcx)
  106b68:	48 83 c4 60          	add    $0x60,%rsp
  106b6c:	5d                   	pop    %rbp
  106b6d:	c3                   	retq   
  106b6e:	eb 00                	jmp    106b70 <unicode.utf8Decode4+0x2c0>
    value <<= 6;
  106b70:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106b74:	c1 e1 10             	shl    $0x10,%ecx
  106b77:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106b7b:	09 c8                	or     %ecx,%eax
  106b7d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  106b80:	b0 01                	mov    $0x1,%al
  106b82:	a8 01                	test   $0x1,%al
  106b84:	75 02                	jne    106b88 <unicode.utf8Decode4+0x2d8>
  106b86:	eb 02                	jmp    106b8a <unicode.utf8Decode4+0x2da>
  106b88:	eb 22                	jmp    106bac <unicode.utf8Decode4+0x2fc>
  106b8a:	48 bf 41 07 10 00 00 	movabs $0x100741,%rdi
  106b91:	00 00 00 
  106b94:	be 2a 00 00 00       	mov    $0x2a,%esi
  106b99:	31 c0                	xor    %eax,%eax
  106b9b:	89 c2                	mov    %eax,%edx
  106b9d:	48 b9 50 0c 10 00 00 	movabs $0x100c50,%rcx
  106ba4:	00 00 00 
  106ba7:	e8 64 b3 ff ff       	callq  101f10 <builtin.default_panic>
  106bac:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106bb0:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  106bb3:	89 c2                	mov    %eax,%edx
  106bb5:	c1 e2 06             	shl    $0x6,%edx
  106bb8:	66 89 55 f4          	mov    %dx,-0xc(%rbp)
  106bbc:	c1 e8 0a             	shr    $0xa,%eax
  106bbf:	83 e0 1f             	and    $0x1f,%eax
  106bc2:	88 45 f6             	mov    %al,-0xa(%rbp)
    value |= bytes[3] & 0b00111111;
  106bc5:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  106bc9:	c1 e2 10             	shl    $0x10,%edx
  106bcc:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106bd0:	09 d0                	or     %edx,%eax
  106bd2:	89 45 a0             	mov    %eax,-0x60(%rbp)
  106bd5:	b8 03 00 00 00       	mov    $0x3,%eax
  106bda:	48 39 c8             	cmp    %rcx,%rax
  106bdd:	73 02                	jae    106be1 <unicode.utf8Decode4+0x331>
  106bdf:	eb 0e                	jmp    106bef <unicode.utf8Decode4+0x33f>
  106be1:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  106be5:	bf 03 00 00 00       	mov    $0x3,%edi
  106bea:	e8 01 b2 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106bef:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  106bf2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106bf6:	0f b6 50 03          	movzbl 0x3(%rax),%edx
  106bfa:	83 e2 3f             	and    $0x3f,%edx
  106bfd:	89 c8                	mov    %ecx,%eax
  106bff:	09 d0                	or     %edx,%eax
  106c01:	c1 e9 10             	shr    $0x10,%ecx
  106c04:	83 e1 1f             	and    $0x1f,%ecx
  106c07:	88 4d f6             	mov    %cl,-0xa(%rbp)
  106c0a:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    if (value < 0x10000) return error.Utf8OverlongEncoding;
  106c0e:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106c12:	c1 e1 10             	shl    $0x10,%ecx
  106c15:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106c19:	09 c8                	or     %ecx,%eax
  106c1b:	2d ff ff 00 00       	sub    $0xffff,%eax
  106c20:	77 24                	ja     106c46 <unicode.utf8Decode4+0x396>
  106c22:	eb 00                	jmp    106c24 <unicode.utf8Decode4+0x374>
  106c24:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106c28:	e8 b3 c5 ff ff       	callq  1031e0 <builtin.returnError>
  106c2d:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106c31:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106c35:	48 8b 14 25 68 05 10 	mov    0x100568,%rdx
  106c3c:	00 
  106c3d:	48 89 11             	mov    %rdx,(%rcx)
  106c40:	48 83 c4 60          	add    $0x60,%rsp
  106c44:	5d                   	pop    %rbp
  106c45:	c3                   	retq   
  106c46:	eb 00                	jmp    106c48 <unicode.utf8Decode4+0x398>
    if (value > 0x10FFFF) return error.Utf8CodepointTooLarge;
  106c48:	0f b6 4d f6          	movzbl -0xa(%rbp),%ecx
  106c4c:	c1 e1 10             	shl    $0x10,%ecx
  106c4f:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  106c53:	09 c8                	or     %ecx,%eax
  106c55:	2d 00 00 11 00       	sub    $0x110000,%eax
  106c5a:	72 24                	jb     106c80 <unicode.utf8Decode4+0x3d0>
  106c5c:	eb 00                	jmp    106c5e <unicode.utf8Decode4+0x3ae>
  106c5e:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  106c62:	e8 79 c5 ff ff       	callq  1031e0 <builtin.returnError>
  106c67:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  106c6b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106c6f:	48 8b 14 25 70 05 10 	mov    0x100570,%rdx
  106c76:	00 
  106c77:	48 89 11             	mov    %rdx,(%rcx)
  106c7a:	48 83 c4 60          	add    $0x60,%rsp
  106c7e:	5d                   	pop    %rbp
  106c7f:	c3                   	retq   
  106c80:	eb 00                	jmp    106c82 <unicode.utf8Decode4+0x3d2>
  106c82:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  106c86:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    return value;
  106c8a:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
  106c8e:	0f b7 75 f4          	movzwl -0xc(%rbp),%esi
  106c92:	66 c7 45 fc 00 00    	movw   $0x0,-0x4(%rbp)
  106c98:	66 89 75 f8          	mov    %si,-0x8(%rbp)
  106c9c:	83 e2 1f             	and    $0x1f,%edx
  106c9f:	88 55 fa             	mov    %dl,-0x6(%rbp)
  106ca2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  106ca6:	48 89 11             	mov    %rdx,(%rcx)
  106ca9:	48 83 c4 60          	add    $0x60,%rsp
  106cad:	5d                   	pop    %rbp
  106cae:	c3                   	retq   
  106caf:	90                   	nop

0000000000106cb0 <mem.set__anon_1830>:
pub fn set(comptime T: type, dest: []T, value: T) void {
  106cb0:	55                   	push   %rbp
  106cb1:	48 89 e5             	mov    %rsp,%rbp
  106cb4:	48 83 ec 70          	sub    $0x70,%rsp
  106cb8:	88 d0                	mov    %dl,%al
  106cba:	88 45 af             	mov    %al,-0x51(%rbp)
  106cbd:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  106cc1:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  106cc5:	88 45 cf             	mov    %al,-0x31(%rbp)
    for (dest) |*d|
  106cc8:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  106ccc:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  106cd0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  106cd4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  106cd8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  106cdc:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  106ce3:	00 
  106ce4:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  106ce8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  106cec:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  106cf0:	48 39 c8             	cmp    %rcx,%rax
  106cf3:	73 1b                	jae    106d10 <mem.set__anon_1830+0x60>
  106cf5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  106cf9:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  106cfd:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  106d01:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  106d05:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  106d09:	48 39 c8             	cmp    %rcx,%rax
  106d0c:	72 04                	jb     106d12 <mem.set__anon_1830+0x62>
  106d0e:	eb 04                	jmp    106d14 <mem.set__anon_1830+0x64>
        d.* = value;
  106d10:	eb 70                	jmp    106d82 <mem.set__anon_1830+0xd2>
    for (dest) |*d|
  106d12:	eb 0d                	jmp    106d21 <mem.set__anon_1830+0x71>
  106d14:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  106d18:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  106d1c:	e8 cf b0 ff ff       	callq  101df0 <builtin.panicOutOfBounds>
  106d21:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  106d25:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  106d29:	8a 55 af             	mov    -0x51(%rbp),%dl
  106d2c:	48 89 c6             	mov    %rax,%rsi
  106d2f:	48 01 ce             	add    %rcx,%rsi
  106d32:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
        d.* = value;
  106d36:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  106d39:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  106d3d:	48 ff c0             	inc    %rax
  106d40:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  106d44:	0f 94 45 f8          	sete   -0x8(%rbp)
  106d48:	8a 45 f8             	mov    -0x8(%rbp),%al
  106d4b:	84 c0                	test   %al,%al
  106d4d:	75 04                	jne    106d53 <mem.set__anon_1830+0xa3>
  106d4f:	eb 00                	jmp    106d51 <mem.set__anon_1830+0xa1>
  106d51:	eb 22                	jmp    106d75 <mem.set__anon_1830+0xc5>
  106d53:	48 bf 78 05 10 00 00 	movabs $0x100578,%rdi
  106d5a:	00 00 00 
  106d5d:	be 10 00 00 00       	mov    $0x10,%esi
  106d62:	31 c0                	xor    %eax,%eax
  106d64:	89 c2                	mov    %eax,%edx
  106d66:	48 b9 60 0c 10 00 00 	movabs $0x100c60,%rcx
  106d6d:	00 00 00 
  106d70:	e8 9b b1 ff ff       	callq  101f10 <builtin.default_panic>
  106d75:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  106d79:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  106d7d:	e9 62 ff ff ff       	jmpq   106ce4 <mem.set__anon_1830+0x34>
  106d82:	48 83 c4 70          	add    $0x70,%rsp
  106d86:	5d                   	pop    %rbp
  106d87:	c3                   	retq   
  106d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  106d8f:	00 

0000000000106d90 <math.min__anon_1831>:
pub fn min(x: anytype, y: anytype) Min(@TypeOf(x), @TypeOf(y)) {
  106d90:	55                   	push   %rbp
  106d91:	48 89 e5             	mov    %rsp,%rbp
  106d94:	48 83 ec 20          	sub    $0x20,%rsp
  106d98:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  106d9c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  106da0:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  106da4:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    if (x < y) {
  106da8:	48 39 f7             	cmp    %rsi,%rdi
  106dab:	73 0a                	jae    106db7 <math.min__anon_1831+0x27>
  106dad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
            .Int => return @intCast(Result, x),
  106db1:	48 83 c4 20          	add    $0x20,%rsp
  106db5:	5d                   	pop    %rbp
  106db6:	c3                   	retq   
  106db7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
            .Int => return @intCast(Result, y),
  106dbb:	48 83 c4 20          	add    $0x20,%rsp
  106dbf:	5d                   	pop    %rbp
  106dc0:	c3                   	retq   
  106dc1:	cc                   	int3   
  106dc2:	cc                   	int3   
  106dc3:	cc                   	int3   
  106dc4:	cc                   	int3   
  106dc5:	cc                   	int3   
  106dc6:	cc                   	int3   
  106dc7:	cc                   	int3   
  106dc8:	cc                   	int3   
  106dc9:	cc                   	int3   
  106dca:	cc                   	int3   
  106dcb:	cc                   	int3   
  106dcc:	cc                   	int3   
  106dcd:	cc                   	int3   
  106dce:	cc                   	int3   
  106dcf:	cc                   	int3   

0000000000106dd0 <__zig_probe_stack>:
  106dd0:	51                   	push   %rcx
  106dd1:	48 89 c1             	mov    %rax,%rcx
  106dd4:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
  106ddb:	72 1c                	jb     106df9 <__zig_probe_stack+0x29>
  106ddd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  106de4:	83 4c 24 10 00       	orl    $0x0,0x10(%rsp)
  106de9:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  106df0:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
  106df7:	77 e4                	ja     106ddd <__zig_probe_stack+0xd>
  106df9:	48 29 cc             	sub    %rcx,%rsp
  106dfc:	83 4c 24 10 00       	orl    $0x0,0x10(%rsp)
  106e01:	48 01 c4             	add    %rax,%rsp
  106e04:	59                   	pop    %rcx
  106e05:	c3                   	retq   
  106e06:	cc                   	int3   
  106e07:	cc                   	int3   
  106e08:	cc                   	int3   
  106e09:	cc                   	int3   
  106e0a:	cc                   	int3   
  106e0b:	cc                   	int3   
  106e0c:	cc                   	int3   
  106e0d:	cc                   	int3   
  106e0e:	cc                   	int3   
  106e0f:	cc                   	int3   

0000000000106e10 <memcpy>:
  106e10:	55                   	push   %rbp
  106e11:	48 89 e5             	mov    %rsp,%rbp
  106e14:	48 89 f8             	mov    %rdi,%rax
  106e17:	48 85 d2             	test   %rdx,%rdx
  106e1a:	0f 84 54 01 00 00    	je     106f74 <memcpy+0x164>
  106e20:	0f b6 0e             	movzbl (%rsi),%ecx
  106e23:	88 08                	mov    %cl,(%rax)
  106e25:	48 83 c2 ff          	add    $0xffffffffffffffff,%rdx
  106e29:	0f 84 45 01 00 00    	je     106f74 <memcpy+0x164>
  106e2f:	48 83 fa 08          	cmp    $0x8,%rdx
  106e33:	73 0e                	jae    106e43 <memcpy+0x33>
  106e35:	49 89 d0             	mov    %rdx,%r8
  106e38:	49 89 c1             	mov    %rax,%r9
  106e3b:	49 89 f3             	mov    %rsi,%r11
  106e3e:	e9 15 01 00 00       	jmpq   106f58 <memcpy+0x148>
  106e43:	48 83 fa 20          	cmp    $0x20,%rdx
  106e47:	73 07                	jae    106e50 <memcpy+0x40>
  106e49:	31 c9                	xor    %ecx,%ecx
  106e4b:	e9 d9 00 00 00       	jmpq   106f29 <memcpy+0x119>
  106e50:	48 89 d1             	mov    %rdx,%rcx
  106e53:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
  106e57:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
  106e5b:	49 89 f9             	mov    %rdi,%r9
  106e5e:	49 c1 e9 05          	shr    $0x5,%r9
  106e62:	49 83 c1 01          	add    $0x1,%r9
  106e66:	45 89 c8             	mov    %r9d,%r8d
  106e69:	41 83 e0 03          	and    $0x3,%r8d
  106e6d:	48 83 ff 60          	cmp    $0x60,%rdi
  106e71:	73 04                	jae    106e77 <memcpy+0x67>
  106e73:	31 ff                	xor    %edi,%edi
  106e75:	eb 63                	jmp    106eda <memcpy+0xca>
  106e77:	49 83 e1 fc          	and    $0xfffffffffffffffc,%r9
  106e7b:	31 ff                	xor    %edi,%edi
  106e7d:	0f 1f 00             	nopl   (%rax)
  106e80:	0f 10 44 3e 01       	movups 0x1(%rsi,%rdi,1),%xmm0
  106e85:	0f 10 4c 3e 11       	movups 0x11(%rsi,%rdi,1),%xmm1
  106e8a:	0f 11 44 38 01       	movups %xmm0,0x1(%rax,%rdi,1)
  106e8f:	0f 11 4c 38 11       	movups %xmm1,0x11(%rax,%rdi,1)
  106e94:	0f 10 44 3e 21       	movups 0x21(%rsi,%rdi,1),%xmm0
  106e99:	0f 10 4c 3e 31       	movups 0x31(%rsi,%rdi,1),%xmm1
  106e9e:	0f 11 44 38 21       	movups %xmm0,0x21(%rax,%rdi,1)
  106ea3:	0f 11 4c 38 31       	movups %xmm1,0x31(%rax,%rdi,1)
  106ea8:	0f 10 44 3e 41       	movups 0x41(%rsi,%rdi,1),%xmm0
  106ead:	0f 10 4c 3e 51       	movups 0x51(%rsi,%rdi,1),%xmm1
  106eb2:	0f 11 44 38 41       	movups %xmm0,0x41(%rax,%rdi,1)
  106eb7:	0f 11 4c 38 51       	movups %xmm1,0x51(%rax,%rdi,1)
  106ebc:	0f 10 44 3e 61       	movups 0x61(%rsi,%rdi,1),%xmm0
  106ec1:	0f 10 4c 3e 71       	movups 0x71(%rsi,%rdi,1),%xmm1
  106ec6:	0f 11 44 38 61       	movups %xmm0,0x61(%rax,%rdi,1)
  106ecb:	0f 11 4c 38 71       	movups %xmm1,0x71(%rax,%rdi,1)
  106ed0:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
  106ed4:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
  106ed8:	75 a6                	jne    106e80 <memcpy+0x70>
  106eda:	4d 85 c0             	test   %r8,%r8
  106edd:	74 40                	je     106f1f <memcpy+0x10f>
  106edf:	4c 8d 0c 3e          	lea    (%rsi,%rdi,1),%r9
  106ee3:	49 83 c1 11          	add    $0x11,%r9
  106ee7:	4c 8d 14 38          	lea    (%rax,%rdi,1),%r10
  106eeb:	49 83 c2 11          	add    $0x11,%r10
  106eef:	49 c1 e0 05          	shl    $0x5,%r8
  106ef3:	31 ff                	xor    %edi,%edi
  106ef5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  106efc:	00 00 00 
  106eff:	90                   	nop
  106f00:	41 0f 10 44 39 f0    	movups -0x10(%r9,%rdi,1),%xmm0
  106f06:	41 0f 10 0c 39       	movups (%r9,%rdi,1),%xmm1
  106f0b:	41 0f 11 44 3a f0    	movups %xmm0,-0x10(%r10,%rdi,1)
  106f11:	41 0f 11 0c 3a       	movups %xmm1,(%r10,%rdi,1)
  106f16:	48 83 c7 20          	add    $0x20,%rdi
  106f1a:	49 39 f8             	cmp    %rdi,%r8
  106f1d:	75 e1                	jne    106f00 <memcpy+0xf0>
  106f1f:	48 39 ca             	cmp    %rcx,%rdx
  106f22:	74 50                	je     106f74 <memcpy+0x164>
  106f24:	f6 c2 18             	test   $0x18,%dl
  106f27:	74 4d                	je     106f76 <memcpy+0x166>
  106f29:	49 89 d2             	mov    %rdx,%r10
  106f2c:	49 83 e2 f8          	and    $0xfffffffffffffff8,%r10
  106f30:	41 89 d0             	mov    %edx,%r8d
  106f33:	41 83 e0 07          	and    $0x7,%r8d
  106f37:	4e 8d 0c 10          	lea    (%rax,%r10,1),%r9
  106f3b:	4e 8d 1c 16          	lea    (%rsi,%r10,1),%r11
  106f3f:	90                   	nop
  106f40:	48 8b 7c 0e 01       	mov    0x1(%rsi,%rcx,1),%rdi
  106f45:	48 89 7c 08 01       	mov    %rdi,0x1(%rax,%rcx,1)
  106f4a:	48 83 c1 08          	add    $0x8,%rcx
  106f4e:	49 39 ca             	cmp    %rcx,%r10
  106f51:	75 ed                	jne    106f40 <memcpy+0x130>
  106f53:	4c 39 d2             	cmp    %r10,%rdx
  106f56:	74 1c                	je     106f74 <memcpy+0x164>
  106f58:	31 c9                	xor    %ecx,%ecx
  106f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  106f60:	41 0f b6 54 0b 01    	movzbl 0x1(%r11,%rcx,1),%edx
  106f66:	41 88 54 09 01       	mov    %dl,0x1(%r9,%rcx,1)
  106f6b:	48 83 c1 01          	add    $0x1,%rcx
  106f6f:	49 39 c8             	cmp    %rcx,%r8
  106f72:	75 ec                	jne    106f60 <memcpy+0x150>
  106f74:	5d                   	pop    %rbp
  106f75:	c3                   	retq   
  106f76:	48 01 ce             	add    %rcx,%rsi
  106f79:	48 01 c1             	add    %rax,%rcx
  106f7c:	83 e2 1f             	and    $0x1f,%edx
  106f7f:	49 89 d0             	mov    %rdx,%r8
  106f82:	49 89 c9             	mov    %rcx,%r9
  106f85:	e9 b1 fe ff ff       	jmpq   106e3b <memcpy+0x2b>
  106f8a:	cc                   	int3   
  106f8b:	cc                   	int3   
  106f8c:	cc                   	int3   
  106f8d:	cc                   	int3   
  106f8e:	cc                   	int3   
  106f8f:	cc                   	int3   

0000000000106f90 <memset>:
  106f90:	55                   	push   %rbp
  106f91:	48 89 e5             	mov    %rsp,%rbp
  106f94:	48 89 f8             	mov    %rdi,%rax
  106f97:	48 85 d2             	test   %rdx,%rdx
  106f9a:	0f 84 3d 01 00 00    	je     1070dd <memset+0x14d>
  106fa0:	48 83 fa 08          	cmp    $0x8,%rdx
  106fa4:	73 0b                	jae    106fb1 <memset+0x21>
  106fa6:	49 89 d1             	mov    %rdx,%r9
  106fa9:	48 89 c7             	mov    %rax,%rdi
  106fac:	e9 10 01 00 00       	jmpq   1070c1 <memset+0x131>
  106fb1:	44 0f b6 c6          	movzbl %sil,%r8d
  106fb5:	48 83 fa 20          	cmp    $0x20,%rdx
  106fb9:	73 07                	jae    106fc2 <memset+0x32>
  106fbb:	31 c9                	xor    %ecx,%ecx
  106fbd:	e9 be 00 00 00       	jmpq   107080 <memset+0xf0>
  106fc2:	48 89 d1             	mov    %rdx,%rcx
  106fc5:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
  106fc9:	66 41 0f 6e c0       	movd   %r8d,%xmm0
  106fce:	66 0f 60 c0          	punpcklbw %xmm0,%xmm0
  106fd2:	f2 0f 70 c0 00       	pshuflw $0x0,%xmm0,%xmm0
  106fd7:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  106fdc:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
  106fe0:	49 89 fa             	mov    %rdi,%r10
  106fe3:	49 c1 ea 05          	shr    $0x5,%r10
  106fe7:	49 83 c2 01          	add    $0x1,%r10
  106feb:	45 89 d1             	mov    %r10d,%r9d
  106fee:	41 83 e1 03          	and    $0x3,%r9d
  106ff2:	48 83 ff 60          	cmp    $0x60,%rdi
  106ff6:	73 04                	jae    106ffc <memset+0x6c>
  106ff8:	31 ff                	xor    %edi,%edi
  106ffa:	eb 4d                	jmp    107049 <memset+0xb9>
  106ffc:	49 83 e2 fc          	and    $0xfffffffffffffffc,%r10
  107000:	31 ff                	xor    %edi,%edi
  107002:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  107009:	00 00 00 
  10700c:	0f 1f 40 00          	nopl   0x0(%rax)
  107010:	f3 0f 7f 04 38       	movdqu %xmm0,(%rax,%rdi,1)
  107015:	f3 0f 7f 44 38 10    	movdqu %xmm0,0x10(%rax,%rdi,1)
  10701b:	f3 0f 7f 44 38 20    	movdqu %xmm0,0x20(%rax,%rdi,1)
  107021:	f3 0f 7f 44 38 30    	movdqu %xmm0,0x30(%rax,%rdi,1)
  107027:	f3 0f 7f 44 38 40    	movdqu %xmm0,0x40(%rax,%rdi,1)
  10702d:	f3 0f 7f 44 38 50    	movdqu %xmm0,0x50(%rax,%rdi,1)
  107033:	f3 0f 7f 44 38 60    	movdqu %xmm0,0x60(%rax,%rdi,1)
  107039:	f3 0f 7f 44 38 70    	movdqu %xmm0,0x70(%rax,%rdi,1)
  10703f:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
  107043:	49 83 c2 fc          	add    $0xfffffffffffffffc,%r10
  107047:	75 c7                	jne    107010 <memset+0x80>
  107049:	4d 85 c9             	test   %r9,%r9
  10704c:	74 28                	je     107076 <memset+0xe6>
  10704e:	4c 8d 14 07          	lea    (%rdi,%rax,1),%r10
  107052:	49 83 c2 10          	add    $0x10,%r10
  107056:	49 c1 e1 05          	shl    $0x5,%r9
  10705a:	31 ff                	xor    %edi,%edi
  10705c:	0f 1f 40 00          	nopl   0x0(%rax)
  107060:	f3 41 0f 7f 44 3a f0 	movdqu %xmm0,-0x10(%r10,%rdi,1)
  107067:	f3 41 0f 7f 04 3a    	movdqu %xmm0,(%r10,%rdi,1)
  10706d:	48 83 c7 20          	add    $0x20,%rdi
  107071:	49 39 f9             	cmp    %rdi,%r9
  107074:	75 ea                	jne    107060 <memset+0xd0>
  107076:	48 39 d1             	cmp    %rdx,%rcx
  107079:	74 62                	je     1070dd <memset+0x14d>
  10707b:	f6 c2 18             	test   $0x18,%dl
  10707e:	74 35                	je     1070b5 <memset+0x125>
  107080:	49 89 d2             	mov    %rdx,%r10
  107083:	49 83 e2 f8          	and    $0xfffffffffffffff8,%r10
  107087:	41 89 d1             	mov    %edx,%r9d
  10708a:	41 83 e1 07          	and    $0x7,%r9d
  10708e:	4a 8d 3c 10          	lea    (%rax,%r10,1),%rdi
  107092:	66 41 0f 6e c0       	movd   %r8d,%xmm0
  107097:	66 0f 60 c0          	punpcklbw %xmm0,%xmm0
  10709b:	f2 0f 70 c0 00       	pshuflw $0x0,%xmm0,%xmm0
  1070a0:	66 0f d6 04 08       	movq   %xmm0,(%rax,%rcx,1)
  1070a5:	48 83 c1 08          	add    $0x8,%rcx
  1070a9:	49 39 ca             	cmp    %rcx,%r10
  1070ac:	75 f2                	jne    1070a0 <memset+0x110>
  1070ae:	49 39 d2             	cmp    %rdx,%r10
  1070b1:	75 0e                	jne    1070c1 <memset+0x131>
  1070b3:	eb 28                	jmp    1070dd <memset+0x14d>
  1070b5:	48 01 c1             	add    %rax,%rcx
  1070b8:	83 e2 1f             	and    $0x1f,%edx
  1070bb:	49 89 d1             	mov    %rdx,%r9
  1070be:	48 89 cf             	mov    %rcx,%rdi
  1070c1:	31 c9                	xor    %ecx,%ecx
  1070c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1070ca:	00 00 00 
  1070cd:	0f 1f 00             	nopl   (%rax)
  1070d0:	40 88 34 0f          	mov    %sil,(%rdi,%rcx,1)
  1070d4:	48 83 c1 01          	add    $0x1,%rcx
  1070d8:	49 39 c9             	cmp    %rcx,%r9
  1070db:	75 f3                	jne    1070d0 <memset+0x140>
  1070dd:	5d                   	pop    %rbp
  1070de:	c3                   	retq   
