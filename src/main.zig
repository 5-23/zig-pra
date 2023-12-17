const std = @import("std");
const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
    _ = c.printf("hi");
}
