#include <stdio.h>
#include <gface/gface.h>

int main()
{
    gface_init("LICENSE_KEY_HERE");
    wprintf(L"%ls\n", gface_acquire());
    gface_shutdown();

    return 0;
}
