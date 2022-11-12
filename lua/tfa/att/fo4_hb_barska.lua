if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Barska sight"
ATTACHMENT.ShortName = "BARSKA"
ATTACHMENT.Icon = "entities/glock_sight_rds.png"
ATTACHMENT.Description = {

}

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [3] =  2,
    },
	["VElements"] = {
		["sight_barska"] = {
			["active"] = true
		},
		["sight_barska_lens"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function(wep, val)
		return val + wep.SightOffset_BARSKA or val
	end,
	["Secondary"] = {
		["IronFOV"] = function(wep, val)
			return val * 1
		end
	},
	["ScopeVElement"] = "sight_barska",
	["Reticle"] = "models/shrimp/fo4/honey_badger/HB_barska_reticle"
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end