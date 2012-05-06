#include <stdbool.h>
#include <wchar.h>

#if !defined(_GFACE_GFACE_H)
#define _GFACE_GFACE_H

bool gface_init(const char *);
wchar_t *gface_acquire();
void gface_shutdown();

#endif // !defined(_GFACE_GFACE_H)
