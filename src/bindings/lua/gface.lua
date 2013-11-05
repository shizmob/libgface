local ffi = require "ffi"

ffi.cdef [[
    bool gface_init(const char*);
    wchar_t *gface_acquire();
    void gface_shutdown();

    size_t wcstombs(char *dest, const wchar_t *src, size_t max);
]]

local C, ffiload, ffinew, ffistr = ffi.C, ffi.load, ffi.new, ffi.string

local wstr_to_str = function(wstr)
    local buf = ffinew("char[128]") -- large enough for us
    C.wcstombs(buf, wstr, 128)
    return ffistr(buf)
end

local gfacelib

return {
    init = function(license_key)
        gfacelib = ffi.load "gface"
        if not gfacelib then return false end
        return gfacelib.gface_init(license_key)
    end,
    acquire = function()
        if not gfacelib then return nil end
        return wstr_to_str(gfacelib.gface_acquire())
    end,
    shutdown = function()
        gfacelib.gface_shutdown()
        gfacelib = nil
    end
}

