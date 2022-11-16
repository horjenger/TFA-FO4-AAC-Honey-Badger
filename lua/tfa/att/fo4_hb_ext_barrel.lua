if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended barrel"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Reduces vertical recoil by 10%",
	TFA.AttachmentColors["+"], "40% less spread",
	TFA.AttachmentColors["-"], "Increases weight of the weapon",
}
ATTACHMENT.Icon = "entities/tfa_qmark.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "EBR"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["KickUp"] = function( wep, stat ) return stat * 0.9 end,
		["KickDown"] = function( wep, stat ) return stat * 0.9 end,
		["Spread"] = function( wep, stat ) return stat * 0.75 end,
	},
	["Secondary"] = {
		["IronAccuracy"] = function( wep, stat ) return stat * 0.75 end,
	},
	["MoveSpeed"] = function( wep, stat ) return stat * 0.95 end,
	["IronSightsMoveSpeed"] = function( wep, stat ) return stat * 0.95 end,
	["ViewModelBoneMods"] = {
		["SharedAttach"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.2, 0), angle = Angle(0, 0, 0) },
		["FrontSight"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.7, 0), angle = Angle(0, 0, 0) },
		["muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.1, 0), angle = Angle(0, 0, 0) },
		["Suppressor:0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.1, 0), angle = Angle(0, 0, 0) },
	},
	["WorldModelBoneMods"] = {
		["SharedAttach"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.2, 0), angle = Angle(0, 0, 0) },
		["LaserSightBeam"] = { scale = Vector(1, 1, 1), pos = Vector(-8.2, 0, 0), angle = Angle(0, 0, 0) },
		["FrontSight"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.7, 0), angle = Angle(0, 0, 0) },
		["muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.1, 0), angle = Angle(0, 0, 0) },
		["Suppressor:0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 8.1, 0), angle = Angle(0, 0, 0) },
	},
        ["Bodygroups_V"] = {
		[5] =  2
    },
        ["Bodygroups_W"] = {
		[4] =  2
    },
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
