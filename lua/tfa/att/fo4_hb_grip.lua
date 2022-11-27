if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Foregrip"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "60% less vertical recoil", "20% less horizontal recoil", TFA.AttachmentColors["-"], "10% lower base accuracy", "5% lower scoped accuracy", "Marginally slower movespeed" }
ATTACHMENT.Icon = "entities/ins2_att_grp.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
	["Animations"] = {
		["draw"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "draw_grip"
		},
		["idle"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "idle_grip"
		},
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_grip"
		},
		["reload_30"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "reload_30_grip"
		},
		["inspect"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "inspect_grip"
		},
		["bash"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "melee_grip"
		},
	},
    ["WalkAnimation"] = {
        ["loop"] = function(wep,val)
            if not wep.WalkAnimation.loop then return end
            val = table.Copy(val) or {}
            val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
            if val.value then
                val["value"] = "walk_grip"
            end
            return val, true, false
        end
    },
	["ShootAnimation"] = {
		["loop"] = function(wep,val)
			if not wep.ShootAnimation.loop then return end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "ACT_VM_PRIMARYATTACK_GRIP"
			end
			return val, true, false
		end
	},
	["IronAnimation"] = {
		["shoot"] = function(wep,val)
			if not wep.IronAnimation.shoot then return end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "fire_iron_2_grip"
			end
			return val, true, false
		end
	},
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.4 end,
		["KickDown"] = function(wep,stat) return stat * 0.4 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.8 end,
		["Spread"] = function(wep,stat) return stat * 1.1 end,
		["IronAccuracy"] = function(wep,stat) return stat * 1.05 end
	},
	["MoveSpeed"] = function(wep,stat) return stat * 0.975 end,
	["IronSightsMoveSpeed"] = function(wep,stat) return stat * 0.975 end,
	["HoldType"] = function(wep,stat)
		return "smg", true
	end,
}

function ATTACHMENT:Attach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

function ATTACHMENT:Detach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end