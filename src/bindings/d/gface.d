module gface;

import core.stdc.stddef;

extern (C)
{
    bool gface_init(const char* str);
    wchar_t* gface_acquire();
    void gface_shutdown();
}
