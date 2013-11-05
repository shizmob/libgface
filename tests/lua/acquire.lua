local gface = require "gface"

gface.init("LICENSE_KEY_HERE")
print(gface.acquire())
gface.shutdown()

