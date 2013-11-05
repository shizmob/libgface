local ffi = require "ffi"

ffi.cdef [[
    bool gface_init(const char*);
    wchar_t *gface_acquire();
    void gface_shutdown();
]]

local C, ffistr = ffi.C, ffi.string

return {
    init = function(license_key) return C.gface_init(license_key) end,
    acquire = function() return ffistr(C.gface_acquire()) end,
    shutdown = function() C.gface_shutdown() end
}
