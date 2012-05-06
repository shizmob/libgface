module gface;

import core.stdc.stddef;

extern (C)
{
    bool gface_init(char* str);
    wchar_t* gface_acquire();
    void gface_shutdown();
}
