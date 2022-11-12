if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Spec-Ops skin"
ATTACHMENT.ShortName = "BLK"
ATTACHMENT.Icon = "entities/black.png"
ATTACHMENT.Description = {}

ATTACHMENT.WeaponTable = {
	["Skin"] = 1
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end