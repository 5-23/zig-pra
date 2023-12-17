# zig-practice
this is zig practice repo


## can't use header file
build.zig add && make include folder
```zig
    exe.addIncludePath(.{
        .path = "include/",
    });
    exe.linkLibC();
```
src/main.zig
```zig
const c = @cImport({
    @cInclude("stdio.h");
});
```