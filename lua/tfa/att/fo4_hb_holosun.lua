if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Holosun sight"
ATTACHMENT.ShortName = "HOLOSUN"
ATTACHMENT.Icon = "entities/tfa_qmark.png"
ATTACHMENT.Description = {

}

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [3] =  2,
    },
        ["Bodygroups_W"] = {
        [2] =  2,
    },
	["VElements"] = {
		["sight_holosun"] = {
			["active"] = true
		},
		["sight_holosun_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_holosun"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_HOLOSUN or val
	end,
	["ScopeVElement"] = "sight_holosun",
	["Reticle"] = "models/shrimp/fo4/honey_badger/HB_holosun_reticle"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end