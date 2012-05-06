import core.stdc.wchar_, std.stdio, gface;

void main()
{
    gface_init("LICENSE_KEY_HERE".dup.ptr);

    auto gface = gface_acquire();
    writeln(gface[0 .. wcslen(gface)]);

    gface_shutdown();
}
