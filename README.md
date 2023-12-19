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

## how to use vector?

```zig
var vector = std.ArrayList(usize).init(std.heap.page_allocator); // init code 
try vector.append(10); // push code
