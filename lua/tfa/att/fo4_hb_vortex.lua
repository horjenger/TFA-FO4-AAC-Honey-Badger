if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Vortex sight"
ATTACHMENT.ShortName = "VORTEX"
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
		["sight_vortex"] = {
			["active"] = true
		},
		["sight_vortex_lens"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["sight_vortex"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_VORTEX or val
	end,
	["Secondary"] = {
		["IronFOV"] = function(wep, val)
			return val * 0.65
		end
	},
	["ScopeVElement"] = "sight_vortex",
	["Reticle"] = "models/shrimp/fo4/honey_badger/HB_barska_reticle"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end