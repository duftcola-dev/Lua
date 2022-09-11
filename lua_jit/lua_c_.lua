-- this example shows how to call C standard c functions from lua
-- using the luajit library ffi
local ffi = require("ffi")

-- declare C code 
ffi.cdef[[
    int printf(const char *fmt,...);
]]
ffi.C.printf("Hello %s!", "world")

