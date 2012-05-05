#include "gface.h"

static bool validated = false;

bool gface_init(char *license_key)
{
    // TODO: implement gface license key checking
    return false;
}

wchar_t *gface_acquire()
{
    if(validated) {
        return L"( ≖‿≖)";
    }
    return L"Your gface license is inactive or otherwise invalid. If you believe this is in error, contact licensing@xn--hwg34fba.ws.";
}

void gface_shutdown()
{
    validated = false;
}
