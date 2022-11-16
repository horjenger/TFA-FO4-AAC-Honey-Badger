if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Barska sight"
ATTACHMENT.ShortName = "BARSKA"
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
		["sight_barska"] = {
			["active"] = true
		},
		["sight_barska_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_barska"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_BARSKA or val
	end,
	["ScopeVElement"] = "sight_barska",
	["Reticle"] = "models/shrimp/fo4/honey_badger/HB_barska_reticle"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end