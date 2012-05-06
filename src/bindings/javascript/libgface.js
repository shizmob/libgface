var gface = [];

gface.validated = false;

gface.init = function (license_key) {
	// TODO: implement gface license key checking
	return false;
}

gface.acquire = function() {
	if(gface.validated) {
        return "( ≖‿≖)";
    }
    return "Your gface license is inactive or otherwise invalid. If you believe this is in error, contact licensing@xn--hwg34fba.ws.";
}

gface.shutdown = function() {
    gface.validated = false;
}
