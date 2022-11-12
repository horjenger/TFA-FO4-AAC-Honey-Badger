if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Fortis control shield"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "10% less overall recoil", "5% less spread", TFA.AttachmentColors["+"], "Flash hider",
}
ATTACHMENT.Icon = "entities/fo4_hb_fortis_ch.png"
ATTACHMENT.ShortName = "COMP"

ATTACHMENT.WeaponTable = {
        ["Bodygroups_V"] = {
        [7] =  1
    },
        ["Bodygroups_W"] = {
        [6] =  1
    },
	["Primary"] = {
		["KickUp"] = function(wep, stat) return stat * 0.8 end,
		["KickDown"] = function(wep, stat) return stat * 0.8 end,
		["KickHorizontal"] = function(wep, stat) return stat * 0.8 end,

		["Spread"] = function(wep, stat) return stat * 0.95 end,
		["IronAccuracy"] = function(wep, stat) return stat * 0.95 end,
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
	["MuzzleAttachmentMod"] = function(wep, stat) return wep.MuzzleAttachmentComp or stat end,
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
