local validated = false

return {
    init = function(license_key)
        -- TODO: implement gface license key checking
        return false
    end,

    acquire = function()
        if validated then
            return "( ≖‿≖)"
        end
        return "Your gface license is inactive or otherwise invalid. If you "
            .. "believe this is in error, contact licensing@xn--hwg34fba.ws."
    end,

    shutdown = function()
        validated = false
    end
}